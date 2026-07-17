# Loop & Gate — Accountability Kit

A judgment layer for your own follow-through. Habit apps remember what you did.
This remembers what you **said you would do and didn't**, counts it, and catches
you when you keep quietly deferring the hard thing. The gates are the map of the
decisions no tool can make for you. The deferral engine is what makes it more than
a journal.

## The idea in one paragraph

A daily loop can remind, track, and score on its own. It should. But it can't want
the outcome for you, it can't decide a task is worth killing, and it can't tell you
a streak is theater. So the loop stops at a fixed set of points and waits for you.
Those points are the gates. The engine underneath does the one mechanical thing
willpower forgets: every morning focus that doesn't show up in the day's log gets a
deferral increment, and at three strikes it trips a pattern alert that forces a
decision. **The gates are the asset. The files are a disposable appendix. It runs
on Claude alone — no account, no local model, no subscription.**

## What's in here

| Path | What it is |
|------|-----------|
| `GETTING-STARTED.md` | Zero-assumptions walkthrough — start here if you're new to any of this. |
| `reference/accountability-gates.md` | The eight gates in runnable checklist form — the core asset. |
| `reference/the-deferral-engine.md` | The mechanic: increments, the 3-strike alert, named patterns, the weekly score — plus where state lives. |
| `skills/` | Five ritual commands: `morning`, `log`, `eod`, `plan-tomorrow`, `weekly-signals`. |
| `templates/` | Starter `goals.md`, `patterns.md`, and the daily-note shape the skills use. |
| `.claude-plugin/` | Marketplace + plugin manifest — install via `/plugin marketplace add`. |
| `scripts/setup.sh` | Optional convenience for the terminal/clone path. Not needed for plugin install. |

## Install

**New to this?** Read **[GETTING-STARTED.md](GETTING-STARTED.md)** — it assumes no
coding background and no terminal experience, and gets you from nothing to your
first `/morning` using the Claude Code Desktop app.

**Have Claude Code? Install it as a plugin — no clone, no setup.** In the Code chat
(Desktop app, web, or CLI), type:

```
/plugin marketplace add slogsdon/loop-and-gate-accountability-kit
```

then click **Install**. The five ritual commands are now available. Unlike the
Build and Grow kits, there's **nothing else to install** — this kit runs on Claude
alone.

**Prefer the terminal?** `git clone` this repo and run `./scripts/setup.sh` in the
project (or Obsidian vault) you want to track.

## The gates

Run **Gate ∞** first every day — it decides how much of the rest today earns.

| Gate | Question | Mode |
|------|----------|------|
| **∞** | How much of this loop does today deserve? | master |
| **0** | What am I trying to move? | Commit |
| **1** | What's the one thing today? | Commit |
| **2** | Did I capture what I did? | Reckon |
| **3** | Did I do what I said? | Reckon |
| **4** | Am I avoiding this? (3+ deferrals) | Pattern |
| **5** | What's tomorrow? | Commit |
| **6** | What patterns emerged? | Pattern |

## What it looks like

You set a morning focus: "wire the failure notification for the export job." The
day fills with adjacent work and it doesn't get done.

- **`/eod`** compares the focus to your log, sees it didn't happen, and increments
  its deferral count. Nothing dramatic — just the honest number.
- Three nights later that count hits **3**, and `/eod` stops being polite:
  *"PATTERN ALERT: deferred 3 times. Priority you keep dodging, or something to
  admit you won't do? Re-commit with a reason, or cut it."*
- You either make it tomorrow's primary with a reason attached, or you let it go.
  No third option — which is the whole point, because the third option is how it
  quietly taxed your attention for a month.

Meanwhile a brutal day earns a single `/log` line and nothing else. Deciding which
kind of day you're having is **Gate ∞**, and it's yours.

## The one rule

The kit doesn't do the follow-through for you. It surfaces the call, counts the
misses, forces the decision — then stops. Answer the reckoning honestly and you
level up. Answer it with a comfortable story and you just get a well-documented
record of your own avoidance.

## What this sits next to

- **The whole stack** — [Loop & Gate](https://shane.logsdon.io/loop-and-gate/) — the
  overview: the mental model, all four pieces, and how to install them together.
- **The Build Kit** — [loop-and-gate-build-kit](https://github.com/slogsdon/loop-and-gate-build-kit)
  — runs the same method on your code (idea → shipped software).
- **The Grow Kit** — [loop-and-gate-grow-kit](https://github.com/slogsdon/loop-and-gate-grow-kit)
  — runs it on your market (shipped software → the right people).
- **The flywheel.** This kit stands alone, but if the other two are installed, its
  nightly reckoning is where a stalled Build ship or an unposted Grow piece gets
  caught — closing Build → Grow → Accountability → Build.
- **The field guide** is the narrative version of the gates, with one honest worked
  example carried the whole way through. This kit is the terse, runnable form.

## Status

The asset (gates reference + deferral-engine mechanic), the five ritual skills, the
templates, and the no-terminal on-ramp are all here. Runs on Claude alone; the
Obsidian-vault path is auto-detected when present.
