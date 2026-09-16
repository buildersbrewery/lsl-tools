# LSL to SLua Phrasebook

Not a class. Just a pocket card for when your fingers still type LSL.

SLua is based on Luau — the language, not the party.

| I used to write... | Now I usually write... | Notes |
|---|---|---|
| `llSay(0, "Hi");` | `ll.Say(0, "Hi")` | Functions live under `ll.` |
| `llSay(0, "Hi " + name);` | `ll.Say(0, `Hi {name}`)` | String interpolation is lovely. `..` also works. |
| `default { touch_start(...) }` | `LLEvents:on("touch_start", function(detected) ... end)` | Events are callbacks now |
| `llDetectedName(0)` | `detected[1]:getName()` | Detection is 1-based and object-like |
| `llSetTimerEvent(2.0);` | `LLTimers:every(2.0, function() ... end)` | You can have more than one timer |
| `list names;` | `local names = {}` | Tables replace most list gymnastics |
| `llList2String(names, 0)` | `names[1]` | Lua arrays start at 1 |
| `<0, 0, 1>` | `vector(0, 0, 1)` | No angle-bracket literals |
| `ZERO_ROTATION` habits | `rotation(0, 0, 0, 1)` | Build rotations with the constructor |
| `TRUE` / `FALSE` | `true` / `false` | lowercase booleans |
| `if (x) { }` | `if x then ... end` | no curly-brace blocks |
| `x++` | `x += 1` | no `++` |
| `llJson2List(...)` piles | `lljson.decode(text)` | Tables in, tables out. Confirm current official names. |

Compiler dropdown reminder: **Lua** means you are typing SLua. **LSL: 2025 VM** still means you are typing LSL, just on the newer engine.

Official deeper guide: https://create.secondlife.com/script/

If a snippet here disagrees with what your current BB class is teaching, trust the class and the official docs. SLua is still growing up.
