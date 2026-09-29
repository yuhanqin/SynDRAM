# SynDRAM pin-stimulus task

Generate a suite of legal, diverse, pin-level SynDRAM traces from `spec.md`.

Use only the following task inputs:

- `spec.md`: protocol behavior and constraints;
- `task_files/interface.json`: retained host-driven pins;
- `task_files/trace-format.md`: restricted SystemVerilog trace syntax;
- `task_files/run-config.json`: suite-level limits;
- `task_files/trace_svh.py`: the trace parser used by the validator;
- `task_files/validate_submission.py`: mechanical format validator.

## Required output

Write `output/submission.json` and one or more traces under `output/traces/`. The manifest must have this form:

```json
{
  "format": "syndram-submission-v1",
  "traces": [
    {"path": "traces/main.trace.svh"}
  ]
}
```

Every listed trace must follow `task_files/trace-format.md` and drive every pin defined by `task_files/interface.json`. The aggregate simulated duration of all traces must stay within the limit in `task_files/run-config.json`.

Validate the completed suite with:

```text
python3 task_files/validate_submission.py output \
  --config task_files/run-config.json
```

The validator checks syntax, paths, signal values, and the simulation-time budget. It checks mechanical conformance only and provides no semantic feedback.

## Objective

Maximize the number of distinct legal scenarios exercised from `spec.md`. Choose the number, contents, values, and timing of the traces yourself. Submit static pin traces only; do not include decoded command labels, arbitrary SystemVerilog processes, loops, macros, system tasks, or file access in a trace.
