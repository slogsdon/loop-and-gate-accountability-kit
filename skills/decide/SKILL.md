---
name: decide
description: Use when you're stuck on a decision, going back and forth, or invoke /decide. Takes a stuck decision in, loads your goals + deferral log, and returns a structured session — Mirror (what you're actually doing) → Real Decision → Recommendation → Next Step. Hard mode strips the diplomatic framing. An on-demand ritual, not a numbered daily gate. Trigger on /decide, "I keep going back and forth on", "I can't decide", "help me think through", "I've been avoiding", or any stuck-decision framing.
---

# /decide — cut through a stuck decision

An on-demand ritual, run whenever a decision is circling — not part of the daily
loop and not a numbered gate. One stuck decision in, one committed action out. It
borrows the deferral engine's lens: a decision you keep re-opening is the same
signal as a task you keep deferring, so it reads the same state.

**Don't** produce a list of considerations. **Don't** soften the Mirror — the user
is here because they already know they're avoiding something.

## Input

The decision comes from the user's message. If none is given, ask: "What decision
are you avoiding?"

If the user says `/decide hard` or includes "hard mode", activate hard mode (see
below).

## Steps

1. **Resolve state** per `reference/the-deferral-engine.md` → State resolution
   (vault if present, else `./accountability/`).
2. Read `goals.md` (the goals and the named avoidance patterns) and `patterns.md`
   (the deferral log). Check whether this decision — or the task behind it — is
   already a tracked row, or matches a named avoidance pattern. A row at 2+
   deferrals, or a matching pattern, changes the Mirror framing.
3. Run the four-part session:

   **Mirror**
   Name what's actually happening — not the stated problem, the real behavior. What
   pattern is this? (confrontation avoidance, commitment fear, perfectionism,
   change resistance, low-stakes procrastination dressed up as complexity.) If it
   matches a named pattern in `goals.md`, say so by name. If the related task is
   already deferred in `patterns.md`, say the number plainly: "You've deferred the
   thing under this N times." Don't soften it.

   **Real Decision**
   Strip the framing. What is the actual choice? One sentence, binary or bounded.
   No "it depends."

   **Recommendation**
   One move, this week. Not a list, not "consider X." A specific action with enough
   detail to act on without further clarification.

   **Next Step**
   The smallest concrete thing to do today or tomorrow to start executing the
   recommendation.

4. After presenting the session, if this is a decision the user keeps re-opening —
   or the related task is already tracked — offer: "Want me to track this in your
   deferral log so the weekly gate sees it?" On yes, add or update its row in
   `patterns.md` (Category = the matching named pattern when one fits; Notes = a
   one-line summary from this session), following the deferral-log format in
   `reference/the-deferral-engine.md`. This is the only write, and it's optional —
   the session itself is the deliverable.
5. If you wrote to state and it's a git repo (or vault), commit:
   `docs: track decision in deferral log`.

## Hard mode

When activated, change only the tone of Mirror and Recommendation — not the
structure:
- **Mirror:** name the avoidance pattern in plain terms, no softening. Call the
  fear by its real name if you can identify it. No diplomatic preamble.
- **Recommendation:** remove hedging. State what to do, not what to consider.

Hard mode is for when you already know what you need to hear and want it said
plainly.

## Output format

Four labeled blocks, a blank line between each. Recommendation and Next Step are
single sentences — not lists.

```
**Mirror**
[what's actually happening]

**Real Decision**
[the actual binary/bounded choice, one sentence]

**Recommendation**
[one specific action, this week]

**Next Step**
[smallest thing to do today or tomorrow]
```
