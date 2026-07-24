# Status of the Builders Brewery LSL Tools Restart
**Date:** 23 July 2026

## Goal

Replace the unmaintained 2015–2020 era packages with a clean, mission-aligned foundation that:

- Serves scripters of every skill level
- Stays synchronized with Linden Lab’s official language definitions
- Supports the Builders Brewery not-for-profit teaching mission
- Can be maintained with minimal ongoing effort

## What has been delivered (complete local tree)

```
buildersbrewery-lsl-tools/
├── README.md
├── CONTRIBUTING.md
├── LICENSE                          # ISC
├── ARCHIVE_NOTES.md                 # How to archive the old repos
├── NEXT_STEPS_FOR_PUBLISHING.md     # Exact actions for GitHub owners
├── STATUS.md                        # This file
│
├── docs/
│   ├── README.md
│   ├── beginner-workflow.md
│   ├── external-editor-setup.md
│   └── keeping-current.md
│
├── examples/
│   ├── README.md
│   ├── beginner/          (5 scripts)
│   ├── intermediate/      (4 scripts)
│   └── advanced/          (3 scripts)
│
├── scripts/
│   └── generate_from_official.py    # Functional converter (ready for real YAML)
│
├── sublime-lsl/
│   ├── README.md
│   ├── LSL.sublime-syntax           # Starter syntax definition
│   ├── LSL.sublime-settings
│   ├── dependencies.json
│   ├── messages.json + install notes
│   └── src/_assets/keyword_data/README.md
│
└── .github/
    ├── ISSUE_TEMPLATE/missing_keyword.md
    └── workflows/validate.yml       # Basic CI checks
```

**Total:** 30+ files, ready to become the first commit of a new repository.

## Completed work in this session

| Area | Status |
|------|--------|
| Project vision & documentation | Done |
| Archive guidance for old repos | Done |
| Leveled example scripts (beginner → advanced) | Done (12 scripts) |
| Definition generator script | Done (functional, handles multiple official schema layouts) |
| Sublime package skeleton (syntax, settings, messages) | Done |
| Basic GitHub Actions validation workflow | Done |
| Contribution & issue templates | Done |
| External-editor and beginner guides | Done |

## Still required after publishing (human + live data)

1. **Run the generator against the real official file**  
   Download current `lsl_definitions.yaml` from https://github.com/secondlife/lsl-definitions and execute:

   ```bash
   python scripts/generate_from_official.py \
     --input path/to/lsl_definitions.yaml \
     --output sublime-lsl/src/_assets/keyword_data/ \
     --pretty
   ```

2. **Wire the generated data into completions / tooltips**  
   The generator produces structured YAML. A small additional step is needed to turn that into Sublime `.sublime-completions` files and tooltip content.

3. **Expand or refine the syntax definition**  
   The included `LSL.sublime-syntax` is a solid starter. It should grow to cover more scopes once the keyword data is live.

4. **Optional further examples**  
   Experiences in depth, pathfinding characters, PBR/GLTF material overrides, more robust combat patterns, etc.

5. **GitHub organization actions**  
   - Create the new repository and push this tree  
   - Archive / rename the old 2020-era repositories  
   - Update website, Discord, and in-world links

## Design decisions (locked)

- Official Linden Lab definitions are the single source of truth.
- Example scripts are treated as primary teaching material.
- Old repositories are archived, not deleted.
- Generator logic lives in one place so future schema changes are manageable.
- The package targets modern Sublime Text while remaining simple enough for volunteers to maintain.

## Ready for hand-off

The entire tree under  
`/home/workdir/artifacts/buildersbrewery-lsl-tools/`  
is ready to download and push as the initial commit of the new active repository.
