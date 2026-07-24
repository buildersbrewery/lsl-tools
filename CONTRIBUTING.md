# Contributing to Builders Brewery LSL Tools

Thank you for helping keep these tools useful for the Second Life community.

## Principles

1. **Accuracy first** — Prefer data derived from Linden Lab’s official `lsl_definitions.yaml`.
2. **All skill levels** — Changes should not make the tools harder for beginners.
3. **Maintainability** — Prefer generation from the official definitions over hand-maintained lists whenever practical.
4. **Clear documentation** — Every new feature or example should be understandable by someone who is still learning.

## Ways to Contribute

- Report missing or incorrect functions/constants/events (use the issue template).
- Improve or add leveled example scripts in `examples/`.
- Improve tooltips, descriptions, or related links.
- Help keep the sync/generator scripts working as the official definitions evolve.
- Documentation improvements, especially for beginners and for external-editor setup with the Second Life viewer.
- Testing on current Sublime Text builds and reporting results.

## Development Notes

- The authoritative source of LSL language data is: https://github.com/secondlife/lsl-definitions
- Keyword / completion data for the Sublime package should be regenerated from that source rather than edited by hand for long periods.
- Example scripts should be self-contained, well-commented, and indicate the skill level they target.

## Pull Request Process

1. Fork the repository.
2. Create a focused branch.
3. Make your changes.
4. Test that syntax highlighting / completions still work for common cases.
5. Open a PR with a clear description of what changed and why.
6. Reference any related issues.

## Code of Conduct

Be respectful. This project exists to help people learn and create. Harassment, gatekeeping, or dismissive behavior toward beginners will not be tolerated.

## Questions?

Open an issue or reach out through the Builders Brewery Discord / in-world channels.
