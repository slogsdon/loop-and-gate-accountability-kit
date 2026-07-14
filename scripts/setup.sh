#!/usr/bin/env bash
# One-time setup for the Loop & Gate Accountability Kit.
# Scaffolds the ./accountability/ state files in the current project from the
# kit's templates, then tells you how to start. Safe to re-run — it never
# overwrites files you've already started.
set -euo pipefail

kit="$(cd "$(dirname "$0")/.." && pwd)"
target="$(pwd)"

echo "== Loop & Gate Accountability Kit — setup =="
echo ""

# If an Obsidian vault is obviously in play, say so and stop — the skills use the
# vault directly and no local scaffold is needed.
if [ -d "$target/.obsidian" ]; then
  echo "Detected an Obsidian vault here (.obsidian/)."
  echo "The rituals will read/write your vault (Context/accountability,"
  echo "Context/patterns, Daily Notes/). No local scaffold needed."
  echo ""
  echo "Start with:  /morning"
  exit 0
fi

# Otherwise scaffold plain-markdown state in ./accountability/.
dir="$target/accountability"
mkdir -p "$dir/daily"

copy_if_absent() {
  # $1 = template basename, $2 = destination path
  if [ -e "$2" ]; then
    echo "kept:    $2 (already exists)"
  else
    cp "$kit/templates/$1" "$2"
    echo "created: $2"
  fi
}

copy_if_absent goals.md    "$dir/goals.md"
copy_if_absent patterns.md "$dir/patterns.md"

echo ""
echo "State ready in ./accountability/ :"
echo "  goals.md      — your goals + named avoidance patterns (fill this in first)"
echo "  patterns.md   — the deferral log (the rituals maintain it)"
echo "  daily/        — one note per day (the rituals create these)"
echo ""
echo "The daily-note template is templates/daily.md — the skills use it to create"
echo "each day's note automatically."
echo ""

cat <<'EOF'
Next, inside Claude Code (Desktop app, web, or CLI):

  1. Edit accountability/goals.md — name your few goals and the avoidance
     patterns you already know you fall into. This is Gate 0, and everything
     downstream measures against it.

  2. Run the loop:
       /morning          set the one thing today
       /log              capture what you did, throughout the day
       /eod              reckon: did you do what you said?
       /plan-tomorrow    set tomorrow while today is still honest
       /weekly-signals   once a week, read the patterns straight

That's the whole system. It runs on Claude alone — no account, no local model,
no subscription. Full walkthrough: GETTING-STARTED.md
EOF
