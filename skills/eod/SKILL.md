---
name: eod
description: Use at the end of the day (or /eod) to reckon honestly. Diffs this morning's focus against the day's log, increments deferral counters for what didn't get done, and raises a pattern alert on anything deferred 3+ times. Gates 3 and 4 of the Loop & Gate accountability loop — the checkpoint most systems skip.
---

# /eod — Gates 3 & 4: did I do what I said, and am I avoiding anything?

The honest checkpoint. Diff the morning's commitment against what actually
happened, count the misses, and force a decision on anything you've now dodged
three times. This gate's integrity is the whole system's integrity — do not soften
it.

**Don't** rewrite this morning's focus to match the day. The miss is the signal.
**Don't** count a busy day as a good day if the busyness didn't move the one thing.

## Steps

1. **Resolve state** per `reference/the-deferral-engine.md` → State resolution.
2. Determine today's date. Read today's daily note (`## Today's Focus` +
   `## Session Log`), `patterns.md`, and `goals.md`.
3. **Reckon (Gate 3).** For each focus item, decide from the Session Log whether it
   was actually done. Be strict: "adjacent work" is not "the thing." Separate
   deliberate skips (with a stated reason) from misses.
4. **Count.** For each miss, increment that task's Deferred Count in `patterns.md`
   (add a row if new), set Last Deferred to today, and tag the Category with a
   matching named pattern from `goals.md` where one fits. For each item completed
   today, strike its row through (`~~task~~`) and note the completion date.
5. **Alert (Gate 4).** For any task now at **3+** deferrals, raise:
   > PATTERN ALERT: "[task]" deferred [N] times. Priority you keep dodging, or
   > something to admit you won't do? Re-commit with a reason + a slot, or cut it.
   Record the user's answer (reason, or removal). No third option.
6. **Pattern match.** If today's misses match a named avoidance pattern in
   `goals.md`, name it in the audit.
7. **Write** an `## EOD Audit` block to today's note (what moved, what slipped,
   deferral changes, any alert + its resolution). Save the `patterns.md` updates.
   If no log entries existed at all today, add a `## Logging Gap` note.
8. If the state is a git repo (or vault), commit: `docs: append EOD audit to [today]`.
9. Present the audit. Honest, not cheerful. Then offer `/plan-tomorrow`.

## The one rule

You don't get to change this morning's focus after the fact. It said what it said.
Did that happen — yes or no. Let the count land.
