# Contributing to loop-and-gate-accountability-kit

Thanks for wanting to help. This kit is a judgment layer for your own
follow-through — a gates reference (`reference/accountability-gates.md`), the
deferral-engine mechanic (`reference/the-deferral-engine.md`), and five ritual
skills (`morning`, `log`, `eod`, `plan-tomorrow`, `weekly-signals`).
Contributions that keep it terse and runnable are very welcome.

## Reporting bugs

Open a [bug report](.github/ISSUE_TEMPLATE/bug_report.md) issue. Include your
Claude Code version, install method (clone or plugin), OS, and the exact steps
plus any error output.

Never paste credentials, tokens, or private vault contents into an issue. For
anything security-sensitive, follow [SECURITY.md](.github/SECURITY.md) instead
of opening a public issue.

## Proposing gate or skill changes

The gates live in `reference/accountability-gates.md`, the deferral mechanic in
`reference/the-deferral-engine.md`, and the ritual commands in `skills/`. Before
proposing a change:

1. **Open a feature request first** for anything non-trivial, so the design can
   be discussed before you write it. Small fixes (a typo, a broken link, a
   clarified checklist item) can go straight to a PR.
2. **Match the existing style.** The gates and rituals are terse, one decision
   or one action each. Keep additions in that form — no speculative structure.
3. **Keep changes surgical.** Touch only what the change needs.

### The gates and the deferral count are the asset

The whole point of this kit is that the loop *stops* and makes you reckon —
and that a deferred focus gets counted whether you like it or not, tripping a
pattern alert at three strikes. **Pull requests that remove a gate, soften the
reckoning into a pat on the back, or defang the deferral count (no increment, no
3-strike alert, an easy opt-out) will be declined.** The uncomfortable count is
the feature. Tightening a gate, clarifying the mechanic, or fixing a
miscount is exactly the kind of change we want; making it comfortable is not. If
you think a gate genuinely needs to change, open an issue and make the case
first.

## Pull request conventions

- **Branch names:** `feature/<short-desc>`, `fix/<short-desc>`, or
  `chore/<short-desc>`.
- **Commits:** [Conventional Commits](https://www.conventionalcommits.org) —
  `feat:`, `fix:`, `docs:`, `refactor:`, `test:`, `chore:`. Small, atomic
  commits.
- **Scope:** one concern per PR. Keep the diff as small as the change allows.
- **Docs:** update the README or reference docs in the same PR as the change.

By contributing, you agree your contributions are licensed under the project's
[MIT License](LICENSE).
