#!/usr/bin/env python3
"""Compute SynDRAM paper metrics from canonical coverage-bin reports."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from statistics import fmean
from typing import Any


LEVELS = ("L1", "L2", "L3", "L4")
REPORT_NAME = "coverage-report.json"


def load_model(path: Path) -> dict[str, Any]:
    model = json.loads(path.read_text(encoding="utf-8"))
    if model.get("format") != "syndram-coverage-model-v1":
        raise ValueError("unsupported coverage-model format")
    for level in LEVELS:
        expected = int(model["counts"][level])
        actual = len(model["levels"][level])
        if actual != expected:
            raise ValueError(f"{level} model count mismatch: {actual} != {expected}")
    return model


def report_path(path: Path) -> Path:
    return path / REPORT_NAME if path.is_dir() else path


def unique_ids(value: Any, label: str) -> set[str]:
    if not isinstance(value, list) or any(not isinstance(item, str) for item in value):
        raise ValueError(f"{label} must be a JSON array of string bin IDs")
    result = set(value)
    if len(result) != len(value):
        raise ValueError(f"{label} contains duplicate bin IDs")
    return result


def load_report(path: Path, model: dict[str, Any]) -> dict[str, Any]:
    source = report_path(path.resolve())
    report = json.loads(source.read_text(encoding="utf-8"))
    if report.get("format") != "syndram-coverage-report-v1":
        raise ValueError(f"unsupported coverage-report format: {source}")
    if report.get("model_version") != model.get("version"):
        raise ValueError(f"coverage-model version mismatch: {source}")
    if set(report.get("hits", {})) != set(LEVELS):
        raise ValueError(f"coverage report must contain exactly {LEVELS}: {source}")

    inventories = {
        level: {str(row["id"]) for row in model["levels"][level]}
        for level in LEVELS
    }
    hits: dict[str, set[str]] = {}
    for level in LEVELS:
        hits[level] = unique_ids(report["hits"][level], f"hits.{level}")
        unknown = hits[level] - inventories[level]
        if unknown:
            raise ValueError(f"unknown {level} bin IDs in {source}: {sorted(unknown)}")

    rows = {
        level: {str(row["id"]): row for row in model["levels"][level]}
        for level in LEVELS
    }
    for child_level, parent_level in (("L4", "L3"), ("L3", "L2"), ("L2", "L1")):
        projected = {str(rows[child_level][child_id]["parent_id"]) for child_id in hits[child_level]}
        missing_ancestors = projected - hits[parent_level]
        if missing_ancestors:
            raise ValueError(
                f"missing {parent_level} ancestors for {child_level} hits in {source}: "
                f"{sorted(missing_ancestors)}"
            )

        parents_with_children = {
            str(row["parent_id"])
            for row in model["levels"][child_level]
        }
        direct_hits = hits[parent_level] - projected
        nonterminal_direct_hits = direct_hits & parents_with_children
        if nonterminal_direct_hits:
            raise ValueError(
                f"nonterminal {parent_level} bins cannot be hit independently in {source}: "
                f"{sorted(nonterminal_direct_hits)}"
            )

    trace_ids = unique_ids(report.get("trace_targets", []), "trace_targets")
    trace_inventory = {str(row["id"]) for row in model["trace_targets"]}
    if trace_ids - trace_inventory:
        raise ValueError(f"unknown trace-target IDs in {source}: {sorted(trace_ids - trace_inventory)}")

    violation_ids = unique_ids(report.get("violations", []), "violations")
    violation_inventory = {str(row["id"]) for row in model["violations"]}
    if violation_ids - violation_inventory:
        raise ValueError(f"unknown violation IDs in {source}: {sorted(violation_ids - violation_inventory)}")

    coverage: dict[str, dict[str, float | int]] = {}
    rates: list[float] = []
    for level in LEVELS:
        total = len(inventories[level])
        hit = len(hits[level])
        rate = hit / total if total else 0.0
        rates.append(rate)
        coverage[level] = {"hit": hit, "total": total, "percent": 100.0 * rate}
    shape = sum(index * rate for index, rate in enumerate(rates)) / (3.0 * sum(rates)) if sum(rates) else 0.0
    return {
        "coverage": coverage,
        "shape": shape,
        "violations": len(violation_ids),
    }


def aggregate(scores: list[dict[str, Any]]) -> dict[str, Any]:
    coverage: dict[str, dict[str, float]] = {}
    mean_profile: list[float] = []
    for level in LEVELS:
        values = [float(score["coverage"][level]["percent"]) for score in scores]
        mean = fmean(values)
        mean_profile.append(mean / 100.0)
        coverage[level] = {"mean": mean, "best": max(values), "worst": min(values)}
    shape = sum(index * rate for index, rate in enumerate(mean_profile)) / (3.0 * sum(mean_profile)) if sum(mean_profile) else 0.0
    return {
        "coverage_percent": coverage,
        "shape": shape,
        "violations": fmean(float(score["violations"]) for score in scores),
    }


def main() -> None:
    root = Path(__file__).resolve().parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("reports", type=Path, nargs="+", help="coverage-report.json files or their run directories")
    parser.add_argument("--model", type=Path, default=root / "model.json")
    parser.add_argument("--output", type=Path, help="write JSON result to this path")
    args = parser.parse_args()
    model = load_model(args.model)
    scores = [load_report(path, model) for path in args.reports]
    result = {
        "format": "syndram-evaluation-v1",
        "model_version": model.get("version"),
        "runs": scores,
        "table": aggregate(scores),
    }
    encoded = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.write_text(encoded, encoding="utf-8")
    else:
        print(encoded, end="")


if __name__ == "__main__":
    main()
