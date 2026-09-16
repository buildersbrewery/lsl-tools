# Correspondence log

Last audit: 15 September 2026 (evening pass)

This is the public workbench. Old editor packs are archived and read-only.

## Inbox and notifications

The GitHub notification API is still not available on this account connection (needs a reconnect with notification permission). Gmail was checked again for GitHub mail from the last year. None found.

What *does* exist is leftover conversation on the archived repos. A reply was attempted on PR 54 during this pass. GitHub refused it: archived repos are read-only. That is still the right tradeoff. Archiving stops people from installing dead packages and hoping they still grow.

Living door for that Emacs work: [issue #3](https://github.com/buildersbrewery/lsl-tools/issues/3).

## Archived repos

| Repo | Status | Open leftovers | What to tell people |
|---|---|---|---|
| [linden-scripting-language](https://github.com/buildersbrewery/linden-scripting-language) | Archived. README already points here. | Issue 53 (please update LSL). PR 54 from @lmiphay, Feb 2026, Emacs syntax from official definitions. Older Vim / VS Code / Prism / Rouge requests. | Use this repo. Official data lives at secondlife/lsl-definitions. |
| [sublime-lsl](https://github.com/buildersbrewery/sublime-lsl) | Archived. | Issue 8, Sublime Text 4107 lint/tooltip report from 2021. | Starter package is in `sublime-lsl/` here. |
| [lsl-definitions](https://github.com/buildersbrewery/lsl-definitions) | Fork of Linden Lab. No open issues. | None. | Prefer upstream https://github.com/secondlife/lsl-definitions (now includes `slua_definitions.yaml`). |

## Kind replies we could not post (archived = read-only)

If a human owner un-archives for ten minutes, these can be pasted and then the repo archived again.

**Issue 53 / PR 54 on linden-scripting-language**

Thank you for the nudge, and thank you @lmiphay for the Emacs update. This repository is archived on purpose. The living workbench is https://github.com/buildersbrewery/lsl-tools and the official language data is https://github.com/secondlife/lsl-definitions. We would be glad to point people at an Emacs file if you open it on the new repo.

**Issue 8 on sublime-lsl**

This package repo is archived. Current starter files live in https://github.com/buildersbrewery/lsl-tools under `sublime-lsl/`.

## Active repo health (this one)

- Open issues: [#3 Emacs welcome mat](https://github.com/buildersbrewery/lsl-tools/issues/3)
- Open pull requests: 0 at last check
- Generator against current official YAML: still a Phase 2 leftover
- Official upstream still publishes both `lsl_definitions.yaml` and `slua_definitions.yaml`
