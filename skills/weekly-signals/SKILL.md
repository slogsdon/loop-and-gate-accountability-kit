---
name: weekly-signals
description: Use once a week (or /weekly-signals) for the zoomed-out view the daily gates can't give you. Aggregates the week's deferrals, logging gaps, and goal-alignment into a deliberately unflattering summary. Gate 6 of the Loop & Gate accountability loop — the only gate that sees patterns.
---

# /weekly-signals — Gate 6: what patterns emerged?

A pattern is invisible one day at a time. Once a week, zoom out and read the whole
thing straight — which tasks you keep deferring, which days fell out of the loop,
and how much of what you did actually served a goal. Signals, not congratulations.

**Don't** produce a cheerful summary. **Don't** rationalize the numbers away — the
low alignment score is the mirror, not an error.

## Steps

1. **Resolve state** per `reference/the-deferral-engine.md` → State resolution.
2. Determine the current week's Monday–Sunday range (YYYY-MM-DD). Read
   `patterns.md`, `goals.md`, and every daily note in the range.
3. **Aggregate:**
   - **Repeat deferrals** — tasks deferred 2+ times this week, with counts. Note
     any that crossed the 3+ pattern-alert line.
   - **Logging gaps** — days in the range with no Session Log at all.
   - **Goal alignment** — classify each logged item as goal-aligned or not, and
     compute a rough percentage. Say which goals got starved.
   - **Graduating patterns** — any repeating deferral or behavior worth adding to
     the named avoidance patterns in `goals.md` (propose; don't auto-write).
4. **Output** a `## Accountability Signals` block for the user to read (and paste
   into a weekly review note if they keep one). Honest, three numbers up top:
   alignment %, worst deferral, gap-day count.
5. Ask before writing anything to `goals.md` or `patterns.md`. This gate reports;
   it changes state only on the user's say-so.
6. If a graduating pattern is confirmed, append it to `goals.md` and commit:
   `docs: add avoidance pattern from weekly signals`.

## The one rule

Read three things and let them steer next week: the alignment percentage, the
worst deferral, and the gap days. You don't need the whole examined life — just the
honest signal, and the willingness to let it land.
