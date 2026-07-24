# Keyword Data

This directory holds the structured data used for:

- Completions
- Tooltips / hover documentation
- Related-link information
- Syntax classification helpers

## Source of Truth

The long-term source of truth is Linden Lab’s official repository:

https://github.com/secondlife/lsl-definitions

In particular the file `lsl_definitions.yaml`.

## Generation

Use the script in the parent repository:

```bash
python scripts/generate_from_official.py \
  --input /path/to/lsl_definitions.yaml \
  --output sublime-lsl/src/_assets/keyword_data/
```

The generator is currently a skeleton and must be completed so that the output matches the schema expected by the rest of the Sublime package.

## Manual edits

Avoid long-term hand maintenance of large keyword lists. Prefer improving the generator so that updates from Linden Lab can be pulled in with minimal manual work.
