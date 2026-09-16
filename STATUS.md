# Status of the Builders Brewery LSL Tools
**Date:** 15 September 2026 (evening pass)

## Goal

A clean, mission-aligned workbench that:

- Serves scripters of every skill level
- Stays synchronized with Linden Lab official language definitions
- Supports the Builders Brewery not-for-profit teaching mission
- Can be maintained with minimal ongoing effort

## What is live

The public repo is https://github.com/buildersbrewery/lsl-tools

Older editor packs (`linden-scripting-language`, `sublime-lsl`) are archived. Their READMEs already point here. Leftover issues and PRs on those repos cannot be closed while they stay archived. See `docs/CORRESPONDENCE.md`.

## Snapshot

| Area | Status |
|------|--------|
| Project vision and docs | Live |
| Leveled LSL examples | Live (beginner / intermediate / advanced) |
| SLua practice toolbox | Live |
| Pocket map, gotchas card, compiler/memory card | Live |
| Definition generator | Present. Still needs a fresh run against current official YAML. |
| Sublime package skeleton | Present. Completions and tooltips not fully wired. |
| Open pull requests on this repo | None |

## Still worth doing (low staff time)

1. Run `scripts/generate_from_official.py` against current `secondlife/lsl-definitions` (`lsl_definitions.yaml` and, when the script supports it, `slua_definitions.yaml`).
2. Keep the SLua practice files honest when official event spellings change.
3. Point website, Discord, and in-world notecards at this repo if any old GitHub links remain.
4. Optional later: completions from generated YAML, a light VS Code path using Linden's official plugin plus our examples.
5. If @lmiphay wants the Emacs file living, accept it here instead of un-archiving the old pack.

## Design decisions (still locked)

- Official Linden Lab definitions are the single source of truth.
- Example scripts are primary teaching material.
- Old repositories stay archived, not deleted.
- Teacher-owned class packets stay with the teachers.
- Clarity beats cleverness.
