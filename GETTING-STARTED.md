# Getting Started (no terminal)

The path for someone who has never opened a terminal and doesn't want to.
Everything here is download-and-click. About 10 minutes, most of it one-time.
This is the lightest of the three Loop & Gate kits — there's nothing to install
on top of it, and it runs on Claude alone.

Prefer the terminal? The [README](README.md) has the `git clone` path. Both end in
the same place.

## What you're about to set up

Two layers:

1. **Claude Code** — the AI that reads and writes your notes and runs the loop.
   You install it as a normal **Desktop app**.
2. **This kit** — the *judgment layer* for your own follow-through. It sets one
   focus each morning, reckons honestly each night, and catches the task you keep
   avoiding. You add it as a **plugin**, no files to download or manage.

That's it. No pipeline to install, no account, no local model, no subscription
beyond your Claude plan.

## What you need

- A **Mac or Windows** computer.
- A **paid Claude plan** — Pro or Max. **The free Claude plan does not include
  Claude Code**, so this won't work on free.

## Step 1 — get a Claude plan

At [claude.ai](https://claude.ai), make sure you're on **Pro** or **Max**. This is
the step people miss, and nothing works without it.

## Step 2 — install the Claude desktop app

A normal app you double-click to install, no terminal.

- **Mac:** download the `.dmg`, open it, drag Claude to Applications.
- **Windows:** download the `.exe` and run it. If it asks you to install **Git**
  first, say yes, then reopen the app.

Get the installers from Anthropic's download page
([code.claude.com/docs](https://code.claude.com/docs)). Open the app, sign in
(the browser opens for a second), and click the **Code** tab.

## Step 3 — add this kit (inside the app)

In the Code chat box, type this and press Enter:

```
/plugin marketplace add slogsdon/loop-and-gate-accountability-kit
```

A menu appears. Click **Install** on the *loop-and-gate-accountability-kit*
plugin. That's it — the five ritual commands and the gates are now available.

> The commands are named `morning`, `log`, `eod`, `plan-tomorrow`, and
> `weekly-signals`. If you already have commands with those names, use the
> plugin-prefixed form (Claude Code will show it in the menu) to avoid a clash.

## Step 4 — pick where your notes live

Open a folder for your accountability notes (**File → Open folder** — a fresh
empty folder is fine), then in the chat type:

```
/morning
```

The first time, it will create an `accountability/` folder with three things:

- `goals.md` — your few goals and the traps you already know you fall into.
- `patterns.md` — the deferral log the system maintains for you.
- `daily/` — one note per day.

Already keep an **Obsidian vault**? Open that folder instead. The rituals detect
it and write to your daily notes automatically — no separate scaffold.

## Step 5 — the daily loop

Fill in `goals.md` once (the AI will help — it's Gate 0, and everything measures
against it). Then run the loop as your day goes:

- **`/morning`** — sets the *one* thing today, chosen against a goal. Surfaces
  what you carried over and flags anything you're starting to avoid.
- **`/log`** — one line, whenever you finish something or make a decision. The
  cheap capture the night reckoning reads. Do this throughout the day.
- **`/eod`** — the honest checkpoint. It compares this morning's focus to what you
  actually logged, counts the misses, and when a task hits three misses it stops
  being polite and asks whether you're avoiding it.
- **`/plan-tomorrow`** — sets tomorrow while today is still honest, so you start
  cold without reconstructing anything.
- **`/weekly-signals`** — once a week, the zoomed-out view: what you keep
  deferring, which days you fell out of the loop, and how much of your week
  actually served a goal. Told straight, not cheerfully.

You don't run all of it every day. On a brutal day, `/log` one line and move on.
On a normal day, morning and night. On a Sunday, the weekly pass. Deciding how
much the day earns is the master gate, and it's yours.

## Going further

- **`reference/accountability-gates.md`** (inside the plugin) — the full eight-gate
  list in plain language, each with a "if this is your weak spot."
- **Pro move:** keep the `accountability/` folder in **git**. The history of
  `daily/` becomes a free, honest audit trail of what you actually did. Not
  required — the loop works without it.
- **The other two kits** — [Build](https://github.com/slogsdon/loop-and-gate-build-kit)
  and [Grow](https://github.com/slogsdon/loop-and-gate-grow-kit) — run the same
  method on your code and your market. If you use them, this kit's nightly
  reckoning is where a stalled ship or an unposted piece gets caught.
- **Across your devices.** Run your rituals from your phone or tablet too, not just
  your desk. The Foundation's [Working across devices](https://github.com/slogsdon/loop-and-gate-foundation#working-across-devices)
  guide — Remote Control, Dispatch, and keeping notes in sync — applies here as
  well, since this kit's daily notes are just files.

## Prefer the terminal?

`git clone` the repo and run `./scripts/setup.sh` in the project you want to
track — see the [README](README.md).
