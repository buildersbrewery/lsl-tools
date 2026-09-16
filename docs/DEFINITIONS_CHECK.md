# Official definition check

Date: 15 September 2026

Source: https://github.com/secondlife/lsl-definitions

| File | What we counted |
|---|---|
| `lsl_definitions.yaml` | 526 functions, 1028 constants, 131 enums, 43 events |
| Generated `LSL_generated.yaml` already in this repo | 526 functions, 1159 constants (enums folded in), 43 events |
| `slua_definitions.yaml` | version 1.0.0. Classes: `LLEvents`, `LLTimers`, `PrimParamsSetterType`. Modules listed on [SLUA_OFFICIAL_TOOLBOX.md](SLUA_OFFICIAL_TOOLBOX.md). |

The generator was run against the current official LSL YAML in this pass. Function and event counts match the file already committed on 24 July 2026. No keyword-list drift to publish.

Do not hand-edit `LSL_generated.yaml`. If counts move later, re-run `scripts/generate_from_official.py` and commit that output.
