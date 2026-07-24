# Next Steps — Publishing the Restarted Builders Brewery LSL Tools

You (or a collaborator with write access to the `buildersbrewery` GitHub organization) need to perform the following actions. I have prepared a complete starter structure locally; it cannot be pushed from this environment.

## 1. Archive the old repositories

See `ARCHIVE_NOTES.md`. Recommended:

- Rename `sublime-lsl` → `sublime-lsl-archive-2020` (or similar)
- Rename `linden-scripting-language` → `linden-scripting-language-archive`
- Add archive banners to their READMEs pointing here

## 2. Create the new active repository

Suggested name: `lsl-tools` or `buildersbrewery-lsl` or simply reuse / replace under a clean name.

Upload / push the entire contents of the `buildersbrewery-lsl-tools/` folder prepared in this session.

## 3. Immediate content priorities after the first push

1. **Finish the definition generator** (`scripts/generate_from_official.py`)
   - Implement the real mapping from `secondlife/lsl-definitions` → keyword data format
   - Run it against the current official YAML and commit the generated assets

2. **Flesh out the Sublime package**
   - Syntax definition files
   - Completions
   - Tooltip / hover support
   - Basic linter integration notes

3. **Expand the example library**
   - More beginner scripts (listen, timer, simple movement, inventory)
   - Intermediate (HTTP requests, experiences, multi-prim link messages)
   - Advanced (Combat 2.0 patterns, pathfinding characters, PBR/GLTF overrides, efficient list & JSON handling)

4. **Documentation**
   - External editor setup guide for the Second Life viewer
   - Beginner workflow guide
   - “How we stay current” page

5. **Discoverability**
   - Add the new repo to the organization profile
   - Update buildersbrewery.com and Discord with the new location
   - Optional: Package Control submission once the Sublime package is solid

## 4. Ongoing maintenance model

Because there is currently no active volunteer maintainer, the design intentionally:

- Treats Linden Lab’s official definitions as the single source of truth
- Provides a generator script so updates are mostly mechanical
- Keeps example scripts and documentation as the high-value human layer

A future maintainer can focus on the generator, examples, and teaching materials rather than hand-editing hundreds of keyword entries.

## Local artifacts location

All files created for this restart are under:

`/home/workdir/artifacts/buildersbrewery-lsl-tools/`

You can download the whole tree and use it as the starting commit for the new repository.
