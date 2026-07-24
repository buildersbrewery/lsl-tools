#!/usr/bin/env python3
"""
Builders Brewery — LSL Definition Generator

Reads Linden Lab's official lsl_definitions.yaml and produces
keyword / completion oriented data for the Sublime package (and
potentially other tooling later).

Official source:
  https://github.com/secondlife/lsl-definitions
  File: lsl_definitions.yaml

Usage:
  python generate_from_official.py \
      --input /path/to/lsl_definitions.yaml \
      --output ../sublime-lsl/src/_assets/keyword_data/

This script is the single place that should be improved when the
official schema evolves.
"""

from __future__ import annotations

import argparse
import datetime as dt
import sys
from pathlib import Path
from typing import Any

try:
    import yaml
except ImportError:
    print("PyYAML is required:  pip install pyyaml", file=sys.stderr)
    sys.exit(1)


def load_official(path: Path) -> dict[str, Any]:
    with path.open(encoding="utf-8") as f:
        data = yaml.safe_load(f)
    if not isinstance(data, dict):
        raise ValueError("Official definitions root must be a mapping")
    return data


def normalize_function(name: str, entry: dict[str, Any]) -> dict[str, Any]:
    """Convert one official function entry into our keyword record."""
    args = entry.get("arguments") or entry.get("params") or {}
    params: list[dict[str, Any]] = []

    if isinstance(args, dict):
        for arg_name, arg_info in args.items():
            if not isinstance(arg_info, dict):
                arg_info = {}
            params.append({
                "name": arg_name,
                "type": arg_info.get("type", "any"),
                "description": arg_info.get("tooltip") or arg_info.get("description") or "",
            })
    elif isinstance(args, list):
        for item in args:
            if isinstance(item, dict):
                if len(item) == 1:
                    arg_name, arg_info = next(iter(item.items()))
                    if not isinstance(arg_info, dict):
                        arg_info = {}
                else:
                    arg_name = item.get("name", "arg")
                    arg_info = item
                params.append({
                    "name": arg_name,
                    "type": arg_info.get("type", "any"),
                    "description": arg_info.get("tooltip") or arg_info.get("description") or "",
                })

    return {
        "name": name,
        "type": "function",
        "description": entry.get("tooltip") or entry.get("description") or "",
        "return": entry.get("return") or entry.get("return-type") or "void",
        "energy": entry.get("energy"),
        "sleep": entry.get("sleep"),
        "function-id": entry.get("func-id") or entry.get("function-id"),
        "params": params,
        "categories": entry.get("categories") or [],
        "deprecated": bool(entry.get("deprecated") or entry.get("slua-deprecated")),
        "status": "deprecated" if entry.get("deprecated") else "active",
        "related": {
            "slwiki": [],
            "constants": [],
            "events": [],
            "functions": [],
        },
    }


def normalize_constant(name: str, entry: dict[str, Any]) -> dict[str, Any]:
    return {
        "name": name,
        "type": "constant",
        "description": entry.get("tooltip") or entry.get("description") or "",
        "value": entry.get("value"),
        "value_type": entry.get("type") or entry.get("value-type") or "integer",
        "member_of": entry.get("member-of") or entry.get("enum"),
        "status": "deprecated" if entry.get("deprecated") else "active",
    }


def normalize_event(name: str, entry: dict[str, Any]) -> dict[str, Any]:
    return {
        "name": name,
        "type": "event",
        "description": entry.get("tooltip") or entry.get("description") or "",
        "params": entry.get("arguments") or entry.get("params") or [],
        "status": "active",
    }


def convert(official: dict[str, Any]) -> dict[str, Any]:
    """
    Best-effort conversion from the official schema.

    The official file has evolved; this function tries several common
    layouts so it keeps working across recent versions.
    """
    functions: dict[str, Any] = {}
    constants: dict[str, Any] = {}
    events: dict[str, Any] = {}

    # Many recent versions put functions directly at the root
    for key, value in official.items():
        if not isinstance(value, dict):
            continue
        if key.startswith("ll") and (
            "func-id" in value or "arguments" in value or "return" in value
        ):
            functions[key] = normalize_function(key, value)
        elif key in ("constants", "enums", "events", "functions", "types"):
            continue
        elif "value" in value or "member-of" in value:
            constants[key] = normalize_constant(key, value)

    # Explicit sections
    for section_name, target in (
        ("functions", functions),
        ("constants", constants),
        ("events", events),
        ("enums", constants),
    ):
        section = official.get(section_name)
        if isinstance(section, dict):
            for name, entry in section.items():
                if not isinstance(entry, dict):
                    continue
                if section_name == "functions":
                    target[name] = normalize_function(name, entry)
                elif section_name == "events":
                    target[name] = normalize_event(name, entry)
                else:
                    target[name] = normalize_constant(name, entry)

    return {
        "meta": {
            "generator": "buildersbrewery/scripts/generate_from_official.py",
            "generated_at": dt.datetime.utcnow().replace(microsecond=0).isoformat() + "Z",
            "source": "secondlife/lsl-definitions",
            "function_count": len(functions),
            "constant_count": len(constants),
            "event_count": len(events),
            "notes": [
                "This file is generated. Prefer improving the generator over hand-editing.",
                "Re-run against the latest official YAML after Linden Lab updates.",
            ],
        },
        "functions": functions,
        "constants": constants,
        "events": events,
    }


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Generate Builders Brewery keyword data from official LSL definitions"
    )
    parser.add_argument(
        "--input", "-i", type=Path, required=True,
        help="Path to lsl_definitions.yaml from secondlife/lsl-definitions",
    )
    parser.add_argument(
        "--output", "-o", type=Path, required=True,
        help="Directory to write generated files into",
    )
    parser.add_argument(
        "--pretty", action="store_true",
        help="Emit more readable YAML",
    )
    args = parser.parse_args()

    if not args.input.is_file():
        print(f"Input not found: {args.input}", file=sys.stderr)
        sys.exit(1)

    args.output.mkdir(parents=True, exist_ok=True)

    print(f"Loading {args.input} ...")
    official = load_official(args.input)

    print("Converting ...")
    data = convert(official)

    out_file = args.output / "LSL_generated.yaml"
    with out_file.open("w", encoding="utf-8") as f:
        yaml.safe_dump(
            data,
            f,
            sort_keys=False,
            allow_unicode=True,
            width=100 if args.pretty else 80,
            default_flow_style=False,
        )

    print(f"Wrote {out_file}")
    print(f"  functions : {data['meta']['function_count']}")
    print(f"  constants : {data['meta']['constant_count']}")
    print(f"  events    : {data['meta']['event_count']}")
    print("Done. Review the output and wire it into the Sublime package assets.")


if __name__ == "__main__":
    main()
