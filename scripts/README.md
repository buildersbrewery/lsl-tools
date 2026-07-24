# Scripts

## generate_from_official.py

This is the most important automation in the project.

**Purpose**  
Reads Linden Lab’s official `lsl_definitions.yaml` and produces structured data the rest of the tools can use.

**Why it exists**  
So no one has to manually maintain hundreds of function and constant entries. When Linden Lab adds new LSL features, we re-run this script instead of editing lists by hand.

**How to run** (after you have the official YAML file):

```bash
python scripts/generate_from_official.py \
  --input /path/to/lsl_definitions.yaml \
  --output sublime-lsl/src/_assets/keyword_data/ \
  --pretty
```

**Design goals**
- Works with recent versions of the official schema
- Clear output counts so you can see what was generated
- Easy for a future volunteer to improve if the official format changes

See `MAINTENANCE.md` for the full low-effort update process.
