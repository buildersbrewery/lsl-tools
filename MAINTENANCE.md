# Maintenance Guide — Designed for Limited Technical Staff

This project is intentionally structured so that **one non-expert person** can keep it useful for years with only occasional small actions.

## Core Principle

> Never hand-edit large lists of functions or constants.  
> Always regenerate them from Linden Lab’s official source.

The single source of truth is:

https://github.com/secondlife/lsl-definitions  
→ file: `lsl_definitions.yaml`

## The Only Regular Task (Recommended every few months, or when major new LSL features are announced)

1. Download the latest `lsl_definitions.yaml` from the link above.
2. Open a terminal in the project folder.
3. Run this exact command:

```bash
python scripts/generate_from_official.py \
  --input /path/to/lsl_definitions.yaml \
  --output sublime-lsl/src/_assets/keyword_data/ \
  --pretty
```

4. Commit the new generated file(s) with a message such as:  
   `Update keyword data from official definitions YYYY-MM-DD`

That is the entire technical maintenance cycle for language data.

## What Does *Not* Need Frequent Updates

- Example scripts — only add new ones when a major new teaching need appears.
- Documentation — update only when the workflow itself changes.
- Syntax highlighting starter — improve gradually if volunteers appear.

## Automation Already Built In

- `scripts/generate_from_official.py` — converts official definitions automatically.
- `.github/workflows/validate.yml` — basic checks on every push/PR.
- Clear issue template for “missing keyword” so community reports are structured.

## Future Automation Ideas (nice-to-have, not required)

If a volunteer with more technical skill appears later, these would further reduce effort:

- A scheduled GitHub Action that checks whether the official definitions have changed and opens a pull request.
- Automatic generation of `.sublime-completions` files directly from the YAML.
- A simple web page or Discord bot that surfaces the newest functions for teachers.

None of these are required for the project to remain useful.

## Longevity Notes

- Keep the LICENSE (ISC) and the clear “not affiliated with Linden Lab” disclaimer.
- Preserve the leveled example scripts — they are the highest-value teaching asset.
- Prefer adding new example scripts over complicating the core package.
- When in doubt, choose the solution that a future volunteer can understand in under 15 minutes.
