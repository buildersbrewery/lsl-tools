# Keeping the Tools Current

The most important rule: **do not hand-maintain large lists of functions and constants for long periods.**

## Source of Truth

Linden Lab publishes the canonical language definitions here:

https://github.com/secondlife/lsl-definitions

The file you care about is `lsl_definitions.yaml`.

## Update Process

1. Download or clone the latest `lsl_definitions.yaml`.
2. Run the generator:

   ```bash
   python scripts/generate_from_official.py \
     --input /path/to/lsl_definitions.yaml \
     --output sublime-lsl/src/_assets/keyword_data/ \
     --pretty
   ```

3. Review the generated `LSL_generated.yaml`.
4. Integrate the new data into the Sublime package assets (completions, tooltips, syntax helpers).
5. Commit with a clear message that includes the upstream definitions version or date if known.
6. Test a handful of new or changed functions in Sublime.

## When the Official Schema Changes

If the generator starts producing empty or incomplete output, the official YAML layout has probably evolved. Update the parsing logic in `scripts/generate_from_official.py` — that is the intended place for such changes.

## Example Scripts

Example scripts are intentionally hand-written teaching material. They do not need to be regenerated from the definitions. Add new ones when a concept becomes important for the community (new major APIs, common patterns, etc.).
