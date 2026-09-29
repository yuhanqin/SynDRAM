#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
VCS_DIR="$SCRIPT_DIR/vcs"
SUBMISSION_DIR="${1:-}"
OUTPUT_DIR="${2:-run-output}"

if [[ -z "$SUBMISSION_DIR" ]]; then
  echo "usage: $0 <submission-dir> [output-dir]" >&2
  exit 2
fi

if [[ ! -d "$SUBMISSION_DIR" || ! -f "$SUBMISSION_DIR/submission.json" ]]; then
  echo "error: submission directory must contain submission.json: $SUBMISSION_DIR" >&2
  exit 2
fi

if [[ ! -f "$VCS_DIR/filelist.f" ]]; then
  echo "error: missing VCS input list: $VCS_DIR/filelist.f" >&2
  exit 2
fi

command -v vcs >/dev/null 2>&1 || {
  echo "error: vcs is not available in PATH" >&2
  exit 127
}

command -v urg >/dev/null 2>&1 || {
  echo "error: urg is not available in PATH" >&2
  exit 127
}

command -v python3 >/dev/null 2>&1 || {
  echo "error: python3 is not available in PATH" >&2
  exit 127
}

SUBMISSION_DIR="$(cd "$SUBMISSION_DIR" && pwd -P)"
if [[ -e "$OUTPUT_DIR" && ! -d "$OUTPUT_DIR" ]]; then
  echo "error: output path is not a directory: $OUTPUT_DIR" >&2
  exit 2
fi
if [[ -d "$OUTPUT_DIR" && -n "$(find "$OUTPUT_DIR" -mindepth 1 -print -quit)" ]]; then
  echo "error: output directory must be empty: $OUTPUT_DIR" >&2
  exit 2
fi
mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR="$(cd "$OUTPUT_DIR" && pwd -P)"

python3 "$SCRIPT_DIR/../task/task_files/validate_submission.py" "$SUBMISSION_DIR" \
  --config "$SCRIPT_DIR/../task/task_files/run-config.json" \
  > "$OUTPUT_DIR/trace-validation.json"

mapfile -d '' TRACE_FILES < <(
  python3 - "$SUBMISSION_DIR" <<'PY'
import json
import os
import sys
from pathlib import Path

root = Path(sys.argv[1])
submission = json.loads((root / "submission.json").read_text(encoding="utf-8"))
for entry in submission["traces"]:
    sys.stdout.write(str((root / entry["path"]).resolve()))
    sys.stdout.write("\0")
PY
)

VDB_DIRS=()
for index in "${!TRACE_FILES[@]}"; do
  TRACE_FILE="${TRACE_FILES[$index]}"
  TRACE_OUTPUT="$(printf '%s/traces/%04d' "$OUTPUT_DIR" "$index")"
  mkdir -p "$TRACE_OUTPUT"

  (
    cd "$VCS_DIR"
    vcs \
      -full64 \
      -sverilog \
      -timescale=1ns/1ps \
      -f filelist.f \
      "+define+SYNDRAM_TRACE_FILE=\"$TRACE_FILE\"" \
      -top syndram_coverage_top \
      -o "$TRACE_OUTPUT/simv" \
      -Mdir="$TRACE_OUTPUT/csrc"
  ) 2>&1 | tee "$TRACE_OUTPUT/compile.log"

  (
    cd "$TRACE_OUTPUT"
    ./simv -cm_dir "$TRACE_OUTPUT/simv.vdb"
  ) 2>&1 | tee "$TRACE_OUTPUT/simulation.log"
  VDB_DIRS+=("$TRACE_OUTPUT/simv.vdb")
done

urg \
  -dir "${VDB_DIRS[@]}" \
  -format text \
  -report "$OUTPUT_DIR/urg-report" \
  2>&1 | tee "$OUTPUT_DIR/urg.log"

python3 "$SCRIPT_DIR/build_coverage_report.py" "$OUTPUT_DIR" \
  --output "$OUTPUT_DIR/coverage-report.json"
