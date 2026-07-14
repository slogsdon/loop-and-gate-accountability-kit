# The Deferral Engine

The part that makes this more than a journal. A journal remembers what you did.
This remembers what you *said you would do and didn't*, counts it, and escalates.
That mechanic — not the note-taking — is the whole point. It surfaces the one
thing willpower systems miss: the task you keep *almost* doing.

This file is the canonical description of the mechanic and of where state lives.
The skills reference it; don't duplicate it into them.

## The mechanic

1. **Morning names the target.** Gate 1 writes one primary focus (and up to two
   secondary) to today's daily note. That is the commitment the day is measured
   against.

2. **The day gets captured.** Gate 2 appends one-line log entries as work happens.
   Cheap on purpose. The log is the evidence the reckoning reads.

3. **Night reckons and counts.** Gate 3 diffs this morning's focus against the
   day's log. For every focus item the log does **not** show as done, increment
   that task's deferral counter in `patterns.md`. Do not silently edit the
   morning focus to match the day — the miss is the signal.

4. **Three strikes trips an alert.** When a task's deferral counter reaches **3**,
   the reckoning stops being polite and raises a **pattern alert** at Gate 4:

   > PATTERN ALERT: "[task]" has been deferred 3 times. Is this actually a
   > priority, or something to admit you're not going to do? Re-commit with a
   > reason and a slot, or cut it.

   There is no third option. It re-commits with a real reason (and becomes
   tomorrow's primary) or it's removed.

5. **Named patterns get checked.** The avoidance patterns you wrote in `goals.md`
   (e.g. "infrastructure over output", "research loops without shipping") are
   checked at the morning and weekly gates. When today's chosen focus or a miss
   matches a named pattern, flag it by name.

6. **The week is scored straight.** Gate 6 aggregates: tasks deferred 2+ times,
   days with no log at all (logging gaps), and what percentage of logged work maps
   to a stated goal. Report it honestly, not cheerfully. A low alignment score is
   the mirror, not an error.

That's the entire engine. Cheap to run daily, and it converts a vague background
guilt into a specific number and a forced choice.

## The deferral log format

`patterns.md` holds one row per tracked task:

```
| Task | Deferred Count | Last Deferred | Category | Notes |
|------|----------------|---------------|----------|-------|
| Wire failure notification | 3 | 2026-07-14 | infra-over-output | PATTERN ALERT |
```

- **Deferred Count** — increments each night the task was a focus and the log
  didn't show it done. Resets to 0 (or the row is struck through) when completed.
- **Last Deferred** — the date of the most recent increment.
- **Category** — free text; prefer matching a named pattern from `goals.md` when
  it fits.
- **Notes** — completion date, a re-commit reason, or `PATTERN ALERT` at 3+.

Struck-through rows (`~~task~~`) are the completion log — done, kept for history.

## State resolution (where the skills read and write)

Every skill resolves its paths the same way, once, at the top:

1. **If an Obsidian vault is present** — detected by an
   `iCloud~md~obsidian` documents path, an `.obsidian/` folder at the project
   root, or the user having told you their vault path — use it:
   - goals → `Context/accountability`
   - deferral log + patterns → `Context/patterns`
   - daily notes → `Daily Notes/YYYY-MM-DD`
   Prefer the `obsidian` CLI if it's installed; otherwise read and write the vault
   files directly. Commit the vault after writes if it's a git repo.

2. **Otherwise (the default, no vault)** — use plain markdown in the project:
   - goals → `./accountability/goals.md`
   - deferral log + patterns → `./accountability/patterns.md`
   - daily notes → `./accountability/daily/YYYY-MM-DD.md`
   `scripts/setup.sh` scaffolds these from `templates/`. Commit them with git if
   the project is a repo — the history of `daily/` is a free audit trail.

Everything downstream of this check is path-agnostic. A skill decides its paths
here and never hard-codes one store. No database, no account, no subscription.

## Runs on Claude alone

This kit has no local-model dependency and no external service. The reckoning,
the counting, and the weekly aggregation are all done by the agent you're already
talking to, over plain text files. That is the entire runtime.
