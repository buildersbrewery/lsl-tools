# SLua — Basic Structure Notes (Complementary Reference)

> These notes are for self-study and quick reference only.  
> They do not replace the structured SLua classes taught at Builders Brewery.

SLua is based on Luau. Exact details continue to evolve; always check the current official documentation.

## High-level differences many LSL scripters notice

| Concept | Typical LSL approach | SLua direction |
|---------|----------------------|----------------|
| Script organization | States + events | More flexible event handling and functions |
| Data | Lists, limited structures | Tables (very common in Lua-family languages) |
| Memory | Tight limits historically | Higher limits under SLua |
| Multiple handlers | Often required careful state design | More natural support for multiple handlers / cleaner structure |
| Timers | Usually one primary timer pattern | Support for more flexible timing approaches |

## Good preparation habits (still valuable in LSL)

- Keep scripts focused and readable
- Prefer clear event handling over deep state-machine complexity when possible
- Use modern storage (Linkset Data) instead of fragile workarounds
- Comment your intent so future you (or a collaborator) can understand it

## Recommendation

1. Attend the Builders Brewery SLua classes when available — they are the proper place for guided learning.
2. Use official Linden Lab SLua resources for authoritative syntax and library details.
3. Use the simple patterns in this repository only as extra practice or quick reminders.

When in doubt, the live class and the instructor materials take priority.
