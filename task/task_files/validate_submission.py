#!/usr/bin/env python3
"""Mechanical validator for SynDRAM trace-suite submissions."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from trace_svh import load_interface, parse_trace


def validate(output_dir: Path, config_path: Path) -> dict:
    output_dir = output_dir.resolve()
    config_path = config_path.resolve()
    config = json.loads(config_path.read_text(encoding="utf-8"))
    if set(config) != {"format", "aggregate_sim_time_limit_ps"} or config.get("format") != "syndram-run-config-v1":
        raise ValueError("run config must use the syndram-run-config-v1 schema")
    submission = json.loads((output_dir / "submission.json").read_text(encoding="utf-8"))
    if set(submission) != {"format", "traces"}:
        raise ValueError("submission.json must contain only format and traces")
    if submission.get("format") != "syndram-submission-v1":
        raise ValueError("submission format must be syndram-submission-v1")
    entries = submission.get("traces")
    if not isinstance(entries, list) or not entries:
        raise ValueError("submission.traces must be a non-empty list")

    interface = load_interface(config_path.parent / "interface.json")
    seen: set[str] = set()
    traces: list[dict] = []
    total_time_ps = 0
    for index, entry in enumerate(entries):
        if not isinstance(entry, dict) or set(entry) != {"path"}:
            raise ValueError(f"trace entry {index} must contain only path")
        relative = Path(str(entry["path"]))
        if relative.is_absolute() or ".." in relative.parts or len(relative.parts) < 2 or relative.parts[0] != "traces" or not relative.name.endswith(".trace.svh"):
            raise ValueError(f"unsafe or non-SVH trace path: {relative}")
        normalized = relative.as_posix()
        if normalized in seen:
            raise ValueError(f"duplicate trace path: {normalized}")
        seen.add(normalized)
        path = output_dir / relative
        resolved = path.resolve()
        if path.is_symlink() or not path.is_file() or not resolved.is_relative_to(output_dir):
            raise ValueError(f"trace must be a regular file below output: {normalized}")
        snapshots = parse_trace(path.read_text(encoding="utf-8"), interface)
        end_time_ps = snapshots[-1].time_ps
        total_time_ps += end_time_ps
        traces.append({
            "path": normalized,
            "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
            "snapshot_count": len(snapshots),
            "end_time_ps": end_time_ps,
        })

    limit = int(config["aggregate_sim_time_limit_ps"])
    if total_time_ps > limit:
        raise ValueError(f"aggregate simulated time {total_time_ps} ps exceeds {limit} ps")
    return {
        "status": "valid",
        "format": "syndram-submission-v1",
        "trace_count": len(traces),
        "total_snapshot_count": sum(row["snapshot_count"] for row in traces),
        "aggregate_sim_time_ps": total_time_ps,
        "aggregate_sim_time_limit_ps": limit,
        "traces": traces,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("output_dir", type=Path)
    parser.add_argument("--config", type=Path, required=True)
    args = parser.parse_args()
    try:
        result = validate(args.output_dir, args.config)
    except Exception as exc:
        print(json.dumps({"status": "invalid", "error": str(exc)}, indent=2))
        raise SystemExit(2) from exc
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
