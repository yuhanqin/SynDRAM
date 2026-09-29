#!/usr/bin/env python3
"""Strict parser for the restricted SynDRAM SystemVerilog pin trace."""

from __future__ import annotations

import argparse
import json
import re
from dataclasses import dataclass
from pathlib import Path
from typing import Any


HERE = Path(__file__).resolve().parent
MAX_TIME_PS = (1 << 63) - 1
BLOCK_RE = re.compile(r"#(?P<delay>\d+)(?P<unit>ps|ns)\s+begin(?P<body>.*?)end", re.S)
ASSIGN_RE = re.compile(
    r"(?P<name>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*"
    r"(?P<width>\d+)'[bB](?P<bits>[01zZ_]+)\s*;"
)


class TraceFormatError(ValueError):
    pass


@dataclass(frozen=True)
class Snapshot:
    index: int
    delay_ps: int
    time_ps: int
    pins: dict[str, str]

    def as_dict(self) -> dict[str, Any]:
        return {
            "index": self.index,
            "delay_ps": self.delay_ps,
            "time_ps": self.time_ps,
            "pins": self.pins,
        }


def load_interface(path: Path = HERE / "interface.json") -> dict[str, Any]:
    interface = json.loads(path.read_text(encoding="utf-8"))
    if interface.get("format") != "syndram-trace-svh-v1":
        raise TraceFormatError("unsupported interface format")
    return interface


def _remove_line_comments(text: str) -> str:
    return re.sub(r"//[^\n]*", "", text)


def parse_trace(text: str, interface: dict[str, Any] | None = None) -> list[Snapshot]:
    interface = interface or load_interface()
    clean = _remove_line_comments(text)
    snapshots: list[Snapshot] = []
    cursor = 0
    absolute_ps = 0
    expected = interface["signals"]

    for index, block in enumerate(BLOCK_RE.finditer(clean)):
        if clean[cursor:block.start()].strip():
            raise TraceFormatError(f"unsupported syntax before block {index}")
        cursor = block.end()
        delay = int(block.group("delay"))
        delay_ps = delay * (1000 if block.group("unit") == "ns" else 1)
        if index == 0 and delay_ps != 0:
            raise TraceFormatError("first block must use #0ps or #0ns")
        if index > 0 and delay_ps <= 0:
            raise TraceFormatError(f"block {index} delay must be positive")
        absolute_ps += delay_ps
        if absolute_ps > MAX_TIME_PS:
            raise TraceFormatError("absolute trace time exceeds signed 64-bit ps")

        body = block.group("body")
        pins: dict[str, str] = {}
        body_cursor = 0
        for assignment in ASSIGN_RE.finditer(body):
            if body[body_cursor:assignment.start()].strip():
                raise TraceFormatError(f"unsupported syntax in block {index}")
            body_cursor = assignment.end()
            name = assignment.group("name")
            if name not in expected:
                raise TraceFormatError(f"unknown signal {name} in block {index}")
            if name in pins:
                raise TraceFormatError(f"duplicate assignment to {name} in block {index}")
            declared_width = int(expected[name]["width"])
            literal_width = int(assignment.group("width"))
            bits = assignment.group("bits").replace("_", "").lower()
            if literal_width != declared_width or len(bits) != declared_width:
                raise TraceFormatError(
                    f"{name} width mismatch in block {index}: "
                    f"declared {declared_width}, literal {literal_width}/{len(bits)}"
                )
            alphabet = set(str(expected[name]["alphabet"]))
            if set(bits) - alphabet:
                raise TraceFormatError(f"{name} contains disallowed bits in block {index}")
            pins[name] = bits
        if body[body_cursor:].strip():
            raise TraceFormatError(f"unsupported syntax at end of block {index}")
        missing = sorted(set(expected) - set(pins))
        if missing:
            raise TraceFormatError(f"block {index} is not a full snapshot; missing {missing}")
        for true_pin, comp_pin in interface["differential_pairs"]:
            if pins[true_pin] not in {"0", "1"}:
                raise TraceFormatError(f"{true_pin}/{comp_pin} are not binary in block {index}")
            complement = "0" if pins[true_pin] == "1" else "1"
            if pins[comp_pin] != complement:
                raise TraceFormatError(f"{true_pin}/{comp_pin} are not complementary in block {index}")
        if snapshots and pins == snapshots[-1].pins:
            raise TraceFormatError(f"block {index} changes no pin")
        snapshots.append(Snapshot(index, delay_ps, absolute_ps, pins))

    if clean[cursor:].strip():
        raise TraceFormatError("unsupported syntax after final block")
    if not snapshots:
        raise TraceFormatError("trace contains no snapshot block")
    return snapshots


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("trace", type=Path)
    parser.add_argument("--interface", type=Path, default=HERE / "interface.json")
    parser.add_argument("--json", action="store_true", help="emit canonical snapshots")
    args = parser.parse_args()
    snapshots = parse_trace(args.trace.read_text(encoding="utf-8"), load_interface(args.interface))
    result: dict[str, Any] = {
        "status": "valid",
        "format": "syndram-trace-svh-v1",
        "snapshot_count": len(snapshots),
        "end_time_ps": snapshots[-1].time_ps,
    }
    if args.json:
        result["snapshots"] = [snapshot.as_dict() for snapshot in snapshots]
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
