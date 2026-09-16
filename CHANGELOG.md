# Changelog

All notable improvements to the Builders Brewery LSL Tools repository are recorded here.

This project is a clean restart of earlier (2015–2020) tooling.
It is designed to complement live classes at Builders Brewery, never to replace instructor materials.

## [2026-09-15 evening] Learner cards and correspondence pass

### Added
- `docs/SLUA_GOTCHAS.md` — viewer-error decoder and LSL-habit traps
- `docs/COMPILER_AND_MEMORY_CARD.md` — the four compiler buttons and a soft memory chart
- `examples/slua/15_hovertext_last_said.luau`
- `examples/slua/16_lsd_json_note.luau`
- `tools/recipes/door_toggle.luau` — SLua twin of the LSL door recipe

### Checked
- GitHub notification inbox still blocked without extra permission
- No GitHub mail in the connected Gmail account
- Archived-repo leftovers unchanged and still read-only (PR 54 comment refused)
- Official `secondlife/lsl-definitions` still ships both LSL and SLua YAML

## [2026-09-15] Audit and SLua learning pass

### Added
- `docs/CORRESPONDENCE.md` for leftover archived-repo mail we cannot close while those repos stay archived
- `docs/SLUA_POCKET_MAP.md` with compiler-dropdown and practice-path charts
- `examples/slua/LSL_SLUA_SIDE_BY_SIDE.md`
- Practice scripts `13_vector_nudge.luau` and `14_config_table.luau`

### Changed
- STATUS, roadmap, and publishing notes now describe the live repo instead of a pre-launch tree
- SLua phrasebook, toolbox README, and sandbox challenges expanded

## [Unreleased] — 2026-07-23

### Added
- Full project foundation: README, license, contribution and maintenance guides
- Priority topics list aligned with community need and platform direction (SLua, Linkset Data, etc.)
- Leveled example scripts (Beginner → Intermediate → Advanced)
- Complementary SLua awareness notes (explicitly not class curricula)
- Documentation for teachers and students, external editor setup, and keeping definitions current
- Official-definition generator script for low-maintenance language data updates
- Basic GitHub Actions validation workflow
- Clear complementary-to-classes policy protecting instructor work

### Design principles established
- Official Linden Lab definitions as single source of truth for language data
- Automation preferred over hand-maintained keyword lists
- Example scripts as primary teaching and practice asset
- Strict separation between public complementary tools and live class materials
- Written for limited technical staff and long-term maintainability
