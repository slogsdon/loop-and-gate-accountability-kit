---
name: morning
description: Use at the start of the day (or /morning) to set the day's one focus. Surfaces yesterday's carryovers and open deferrals, checks them against your goals and named avoidance patterns, and writes one primary + up to two secondary focus items to today's daily note. Gate 1 of the Loop & Gate accountability loop.
---

# /morning — Gate 1: what's the one thing today?

Set the day by naming the single most important thing to move, chosen against a
goal and not against your mood. Run **Gate ∞ first**: on a survival day, skip the
ritual and just log one line (see the `log` skill); on a real working day, run
this.

**Don't** propose more than one primary focus and two secondary. **Don't** let the
easy visible task win by default — surface it *next to* the goal-moving one.

## Steps

1. **Resolve state** per `reference/the-deferral-engine.md` → State resolution
   (vault if present, else `./accountability/`).
2. Determine today's and yesterday's dates (YYYY-MM-DD). If yesterday's note is
   absent, try D-2, D-3, D-4 and label the date you actually used.
3. Read:
   - `goals.md` — the goals and the named avoidance patterns.
   - `patterns.md` — the deferral log; note anything at 2+ deferrals.
   - yesterday's daily note — its focus, its reckoning, any tomorrow plan.
4. **Surface carryovers.** List items from yesterday that weren't completed and any
   deferral at 2+. Flag any that match a named avoidance pattern from `goals.md`,
   by name.
5. **Propose today's focus** — exactly one primary and at most two secondary, each
   tied to a goal. Prefer a durable "tomorrow" plan from yesterday if present. If a
   3+ deferral item is the honest primary, say so and attach a reason.
6. **Write** to today's daily note under `## Today's Focus` (create the note from
   `templates/daily.md` if it doesn't exist).
7. If the state is a git repo (or vault), commit: `docs: write today's focus to [today]`.
8. Present the focus and the carryover flags to the user. Keep it short.

## The one rule

The primary focus is the important-and-uncomfortable thing, not the
satisfying-and-safe thing. If you're proposing the comfortable task as primary,
name the goal-moving alternative beside it and ask the user to choose.
