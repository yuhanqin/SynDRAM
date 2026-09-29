# Restricted SystemVerilog pin-trace format

A trace is a deterministic sequence of complete pin snapshots. It contains host-driven inputs only and must use the `.trace.svh` suffix.

The following grammar sketch uses angle-bracketed metavariables for syntax only; they are not literal trace content and do not prescribe any pin values, timing, commands, or scenarios:

```text
#<nonnegative integer><ps|ns> begin
  <signal> = <width>'b<bits>;
  <one assignment for every remaining signal>
end
```

`#delay` is relative to the preceding snapshot and uses an integer followed by `ps` or `ns`. The validator converts all delays to picoseconds. The first delay must be zero; every later delay must be positive. Assignments inside a block are atomic. Each block must assign every signal in `interface.json` exactly once.

The only accepted value syntax is `<width>'b<bits>`. Underscores may separate bits. `z` is case-insensitive and is permitted only where the interface alphabet allows it. Every differential clock pair must be complementary.

Line comments beginning with `//` are allowed. Modules, processes, variables, expressions, command annotations, macros, includes, loops, conditions, randomization, system tasks, and file access are rejected. A noninitial block must change at least one pin value. Absolute time must fit in a signed 64-bit integer.

The Coverage Model reconstructs commands and protocol state from pins. Labels or semantic events supplied by a submission are never trusted.
