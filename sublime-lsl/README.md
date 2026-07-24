# =BB= LSL for Sublime Text

Modern Linden Scripting Language support for Sublime Text, rebuilt and maintained under the Builders Brewery not-for-profit mission.

This package replaces the previous `buildersbrewery/sublime-lsl` (last updated 2020). The old repository is archived.

## Features

- Syntax highlighting for current LSL
- Completions with parameter hints
- Tooltips / hover documentation
- Integration points for linting (SublimeLinter + lslint)
- Multiple indent style support (Allman, K&R, etc.)
- Designed to be regenerable from Linden Lab’s official definitions

## Requirements

- Sublime Text Build 4100+ recommended (the package targets modern ST4)
- Package Control
- (Optional but recommended) SublimeLinter and a current `lslint` binary

## Installation

**Once published via Package Control:**
1. Command Palette → Package Control: Install Package
2. Search for the Builders Brewery LSL package name

**Manual / development install:**
1. Clone or copy this `sublime-lsl` folder into your Sublime Text `Packages` directory
2. Restart Sublime Text or run “Package Control: Satisfy Dependencies” if needed

## Configuration

See the settings files and the main project documentation for recommended `mdpopups` and linter settings.

## Keeping Current

The keyword data and related assets are intended to be regenerated from:

https://github.com/secondlife/lsl-definitions

See the `/scripts` folder in the parent repository for generator utilities.

## License

ISC License (same family as the original package).

Second Life® and LSL are trademarks of Linden Research, Inc. This project is not affiliated with or sponsored by Linden Research.
