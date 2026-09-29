#!/usr/bin/env python3
"""Build the canonical report from VCS/URG terminal-bin coverage."""

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from pathlib import Path
from typing import Any


LEVELS = ("L1", "L2", "L3", "L4")
TARGET_GROUP = "cg_syndram_terminal_leaves"
TARGET_VARIABLE = "cp_terminal_leaf"
TRACE_RE = re.compile(r"^SYNDRAM_TRACE_HIT\s+(\S+)\s+(\d+)\s+(\d+)\s+([01])$")
VIOLATION_RE = re.compile(r"^SYNDRAM_VIOLATION\s+(\d+)$")
URG_ROW_RE = re.compile(r"^\s*(\S+)\s+(\d+)\s+\d+(?:\s+\d+)?\s*$")

TRACE_MARKERS = {
    ("clock_odt", 0): "rule-trace-section786-clock-odt-write-off",
    ("clock_odt", 1): "rule-trace-section786-clock-odt-read-dq",
    ("clock_odt", 2): "rule-trace-section786-clock-odt-read-rdqs",
    ("deff_exit", 0): "rule-trace-v1-deff-exit-to-secondary-nop",
    ("deff_exit", 1): "rule-trace-v1-deff-secondary-nop-to-command",
    ("deff_exit", 2): "rule-trace-v1-deff-secondary-command-requires-nop",
    ("refdb", 0): "REFdb distinct bank pairs",
    ("cbt", 0): "CBT PRBS16 input sequence",
    ("refresh_gap", 0): "refresh surrounding max gap",
    ("refresh_credit", 0): "refresh credit window",
    ("refresh_credit", 1): "refresh counted burst",
    ("refresh_window", 0): "refresh window obligation",
}


def load_model(path: Path) -> dict[str, Any]:
    model = json.loads(path.read_text(encoding="utf-8"))
    if model.get("format") != "syndram-coverage-model-v1":
        raise ValueError("unsupported coverage-model format")
    for level in LEVELS:
        if len(model["levels"][level]) != int(model["counts"][level]):
            raise ValueError(f"{level} model count mismatch")
    return model


def terminal_nodes(model: dict[str, Any]) -> list[tuple[str, str]]:
    return [
        (level, str(row["id"]))
        for level in LEVELS
        for row in model["levels"][level]
        if not row.get("child_ids")
    ]


def normalize_name(value: str) -> str:
    return re.sub(r"[^a-z0-9]+", "_", value.lower()).strip("_")


def violation_ordinals(model: dict[str, Any], source: Path) -> dict[int, str]:
    entries: dict[int, str] = {}
    text = source.read_text(encoding="utf-8")
    for name, number in re.findall(r"bins\s+syndram_illegal__([A-Za-z0-9_]+)\s*=\s*\{32'd(\d+)\}", text):
        entries.setdefault(int(number), name)
    if set(entries) != set(range(1, 61)):
        raise ValueError("forbidden-bin source does not define ordinals 1 through 60")
    by_name: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for row in model["violations"]:
        by_name[normalize_name(str(row["name"]))].append(row)
    result: dict[int, str] = {}
    for number, source_name in entries.items():
        candidates = by_name.get(re.sub(r"^table\d+_", "", source_name), [])
        if len(candidates) == 1:
            result[number] = str(candidates[0]["id"])
        elif number == 2:
            result[number] = "VIOL-1eb39c818558f22f"
        elif number == 3:
            result[number] = "VIOL-2777c0e4b8bf40ba"
        else:
            raise ValueError(f"cannot map violation ordinal {number}: {source_name}")
    valid = {str(row["id"]) for row in model["violations"]}
    if set(result.values()) != valid:
        raise ValueError("violation ordinal mapping does not match model inventory")
    return result


def project_ancestors(hits: dict[str, set[str]], model: dict[str, Any]) -> dict[str, set[str]]:
    rows = {
        level: {str(row["id"]): row for row in model["levels"][level]}
        for level in LEVELS
    }
    for child_level, parent_level in (("L4", "L3"), ("L3", "L2"), ("L2", "L1")):
        for child_id in list(hits[child_level]):
            hits[parent_level].add(str(rows[child_level][child_id]["parent_id"]))
    return hits


def urg_terminal_hits(path: Path, model: dict[str, Any]) -> dict[str, set[str]]:
    source = path / "urg-report" / "grpinfo.txt"
    if not source.is_file():
        raise ValueError(f"missing URG text report: {source}")
    group = variable = None
    covered_section: bool | None = None
    target_seen = False
    covered_names: set[str] = set()
    for raw in source.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw.strip()
        if line.startswith("Group Instance"):
            group = variable = None
            covered_section = None
        elif line.startswith("Group :"):
            group = line.split("::", 1)[-1].strip()
            variable = None
            covered_section = None
            target_seen |= group == TARGET_GROUP
        elif group and line.startswith("Summary for Variable "):
            variable = line.removeprefix("Summary for Variable ").strip()
            covered_section = None
        elif group and variable and line in {"Covered bins", "Uncovered bins", "Bins"}:
            covered_section = line != "Uncovered bins"
        elif line.startswith(("Excluded/Illegal bins", "Ignored bins", "Summary for ")):
            covered_section = None
        elif group == TARGET_GROUP and variable == TARGET_VARIABLE and covered_section:
            match = URG_ROW_RE.match(raw)
            if match and match.group(1) not in {"NAME", "Total"} and int(match.group(2)) > 0:
                covered_names.add(match.group(1))
    if not target_seen:
        raise ValueError(f"URG report does not contain {TARGET_GROUP}")

    terminals = terminal_nodes(model)
    width = max(4, len(str(max(0, len(terminals) - 1))))
    names = {f"terminal_{ordinal:0{width}d}": node for ordinal, node in enumerate(terminals)}
    unknown = covered_names - names.keys()
    if unknown:
        raise ValueError(f"unknown native terminal bins in URG report: {sorted(unknown)}")
    hits = {level: set() for level in LEVELS}
    for name in covered_names:
        level, node_id = names[name]
        hits[level].add(node_id)
    return project_ancestors(hits, model)


def simulation_logs(output_dir: Path) -> list[Path]:
    trace_root = output_dir / "traces"
    logs = sorted(trace_root.glob("*/simulation.log")) if trace_root.is_dir() else []
    if logs:
        return logs
    legacy = output_dir / "simulation.log"
    if legacy.is_file():
        return [legacy]
    raise ValueError(f"missing VCS simulation logs below: {output_dir}")


def auxiliary_hits(logs: list[Path], model: dict[str, Any], violation_map: dict[int, str]) -> tuple[set[str], set[str]]:
    trace_names: set[str] = set()
    violation_ids: set[str] = set()
    for log_path in logs:
        completed = False
        for raw_line in log_path.read_text(encoding="utf-8", errors="replace").splitlines():
            line = raw_line.strip()
            trace_match = TRACE_RE.match(line)
            if trace_match and trace_match.group(4) == "1":
                marker = (trace_match.group(1), int(trace_match.group(3)))
                if marker in TRACE_MARKERS:
                    trace_names.add(TRACE_MARKERS[marker])
                continue
            violation_match = VIOLATION_RE.match(line)
            if violation_match:
                ordinal = int(violation_match.group(1))
                if ordinal not in violation_map:
                    raise ValueError(f"unknown violation ordinal in log: {ordinal}")
                violation_ids.add(violation_map[ordinal])
                continue
            if line.startswith("SYNDRAM_RUN_COMPLETE "):
                completed = True
        if not completed:
            raise ValueError(f"simulation did not complete: {log_path}")
    trace_index = {str(row["name"]): str(row["id"]) for row in model["trace_targets"]}
    unknown = trace_names - trace_index.keys()
    if unknown:
        raise ValueError(f"unmapped trace-target names: {sorted(unknown)}")
    return {trace_index[name] for name in trace_names}, violation_ids


def build_report(output_dir: Path, model: dict[str, Any], violation_map: dict[int, str]) -> dict[str, Any]:
    hits = urg_terminal_hits(output_dir, model)
    trace_ids, violation_ids = auxiliary_hits(simulation_logs(output_dir), model, violation_map)
    return {
        "format": "syndram-coverage-report-v1",
        "model_version": model.get("version"),
        "hits": {level: sorted(hits[level]) for level in LEVELS},
        "trace_targets": sorted(trace_ids),
        "violations": sorted(violation_ids),
    }


def main() -> None:
    root = Path(__file__).resolve().parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("run_directory", type=Path, help="VCS/URG run output directory")
    parser.add_argument("--model", type=Path, default=root / "model.json")
    parser.add_argument("--output", type=Path, help="output file; defaults to RUN_DIRECTORY/coverage-report.json")
    args = parser.parse_args()
    run_directory = args.run_directory.resolve()
    model = load_model(args.model)
    violation_map = violation_ordinals(model, root / "vcs" / "src" / "syndram_coverage_forbidden.svh")
    report = build_report(run_directory, model, violation_map)
    destination = args.output or run_directory / "coverage-report.json"
    destination.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
