# SynDRAM Scorer

This directory runs validated SynDRAM submissions and computes the benchmark metrics.

## Files

- `run.sh`: validates a submission, runs every trace with VCS, merges coverage with URG, and creates `coverage-report.json`;
- `model.json`: defines the scored coverage hierarchy and stable target identifiers;
- `build_coverage_report.py`: converts VCS/URG output into the canonical coverage report;
- `scorer.py`: validates one or more canonical reports and computes coverage, Shape, and violation metrics;
- `vcs/`: contains the VCS file list and Coverage Model sources.

The scored hierarchy contains **38 L1**, **63 L2**, **140 L3**, and **1,933 L4** targets, together with **60** forbidden-behavior targets. L1-L4 are command constraint, command attribute, configuration context, and parameter resolution, respectively.

## Run a submission

From the repository root, run:

```text
scorer/run.sh output run-output
```

`output` must contain `submission.json` and the traces produced from `task/task.md`. `run-output` must be new or empty. VCS and URG must be available in `PATH`.

The command writes the simulator artifacts and `run-output/coverage-report.json`.

## Score reports

Score one or more independent runs with:

```text
python3 scorer/scorer.py run-output-1 run-output-2 run-output-3 \
  --output score.json
```

The scorer accepts either a `coverage-report.json` file or the directory containing it. For each run it reports L1-L4 hit counts, totals, coverage percentages, Shape, and the number of distinct violations. For multiple runs it also reports the mean, best, and worst coverage at each level, mean-profile Shape, and mean violations.
