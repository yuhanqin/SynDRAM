# SynDRAM Benchmark

This repository contains the benchmark for the paper "SynDRAM: A Hierarchical Functional Coverage Benchmark for DRAM Protocol Stimulus Generation."

The release has two isolated parts:

- `task/`: the specification, prompt, trace format, interface, limits, parser, and submission validator exposed to the Agent;
- `scorer/`: the complete public scoring implementation, including the frozen Coverage Model, VCS runner, coverage-report builder, model, and scorer.

Generated traces use the restricted SystemVerilog syntax documented in `task/task_files/trace-format.md`. Start from `task/task.md`; it references all inputs available to a benchmark participant.

During stimulus generation, mount only the contents of `task/` into the Agent workspace. Do not expose `scorer/`, prior submissions, simulation logs, coverage reports, or repository history to the Agent. After generation ends, pass the completed submission to `scorer/`. This phase isolation is part of the benchmark protocol even though both parts are public and reproducible.

The repository does not provide VCS. The runner requires Python 3.10 or newer, Bash 4 or newer, and the user's licensed `vcs` and `urg` commands in `PATH`.

The benchmark flow is:

1. Generate one or more traces from the contents of `task/` and validate the submission:

   ```text
   python3 task/task_files/validate_submission.py output \
     --config task/task_files/run-config.json
   ```

2. Run the validated trace suite with the user's VCS/URG installation available in `PATH`:

   ```text
   scorer/run.sh output run-output
   ```

   VCS samples the terminal bins, URG merges their hit counts, and `build_coverage_report.py` writes `run-output/coverage-report.json`. Its stable bin IDs are the only scored input consumed by the scorer.

3. Score one or more coverage reports or their containing run directories:

   ```text
   python3 scorer/scorer.py run-output-1 run-output-2 run-output-3 \
     --output score.json
   ```

Each `run-output-*` directory is one independent benchmark run containing one trace suite. VCS samples only terminal leaves as independent coverage bins. The coverage-report builder reads those native hits from URG and projects them to every ancestor in `model.json`. A terminal leaf may occur at any level when that node has no children; a node that still has children is never sampled independently. All terminal leaves in the current hierarchy are at L4, so the paper's L1–L4 inventories and denominators remain 38/63/140/1,933. The scorer validates those bin IDs against `model.json`, then reports the paper's per-level mean/best/worst, mean-profile Shape, and mean Violations across the supplied runs.
