---
name: log
description: Use throughout the day (or /log) to capture what you just did, decided, or thought — in one line, before it's gone. Appends a timestamped entry to today's daily note. Gate 2 of the Loop & Gate accountability loop; the cheap capture the nightly reckoning reads.
---

# /log — Gate 2: did I capture what I did?

Catch the thought before it drifts off. One line, timestamped, now. On the margins
the idea at a red light is gone by the keyboard, so the bar is deliberately low:
capture beats polish every time.

**Don't** turn this into a journal entry. **Do** capture decisions *and their
reason* — the reason is what you can't reconstruct in three days.

## Steps

1. **Resolve state** per `reference/the-deferral-engine.md` → State resolution.
2. Determine today's date and the current time (HH:MM).
3. Take the user's text (or ask for one line if they invoked it bare). If it's a
   decision, make sure the *why* is captured, not just the *what*.
4. Append to today's daily note under `## Session Log`:
   `**[HH:MM]** [the one-line entry]`
   Create the note from `templates/daily.md` if it doesn't exist.
5. If tracking a habit (e.g. a walk), log it the same way:
   `**[HH:MM]** 🚶 Walk: yes`. Habits are goals too, and the reckoning can only
   count what got written down.
6. If the state is a git repo (or vault), commit: `docs: log session entry [HH:MM]`.
7. Confirm in one line. Don't editorialize.

## Note

This is the most-skipped gate and the one the whole loop depends on. If the user
keeps forgetting, suggest attaching it to an existing habit (closing the laptop,
the walk, a context switch) rather than nagging.
