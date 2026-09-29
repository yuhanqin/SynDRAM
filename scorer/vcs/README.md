# VCS run interface

This directory contains the source inputs for running generated traces with the user's VCS/URG installation available in `PATH`. VCS is not distributed with the benchmark.

Run one submitted trace suite from the repository root:

```text
scorer/run.sh output run-output
```

The input directory must contain the `submission.json` and traces produced from `task/task.md`. The script validates the suite, compiles and simulates every listed trace against the frozen Coverage Model, invokes URG over their VDBs, and runs the Coverage Model report stage. The output directory must be new or empty. The script writes:

- `run-output/trace-validation.json`;
- `run-output/traces/NNNN/compile.log`;
- `run-output/traces/NNNN/simulation.log`;
- `run-output/traces/NNNN/simv.vdb`;
- `run-output/urg.log`;
- `run-output/urg-report/`;
- `run-output/coverage-report.json`.

`syndram_terminal_coverage.sv` is a frozen benchmark asset with one native covergroup bin for each terminal node in the hierarchy. It performs the command-history and configuration sampling inside the VCS simulation. In the current model all 1,933 terminal nodes are at L4. URG is authoritative for those terminal hits; `build_coverage_report.py` maps the covered native bins to stable model IDs and derives L1–L3 only by following `parent_id` links. It does not infer leaf hits from trace text.

The logs and VDBs are run artifacts. `coverage-report.json` is the scored interface: it contains the model version and the stable hit IDs used by the scorer. The scorer reads only this report:

```text
python3 scorer/scorer.py run-output
```

The scorer neither reads submitted traces nor parses simulation logs. It validates the reported IDs against `scorer/model.json` and computes the requested aggregate metrics.
