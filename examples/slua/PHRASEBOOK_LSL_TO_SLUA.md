# LSL to SLua Phrasebook

Not a class. Just a pocket card for when your fingers still type LSL.

SLua is based on Luau — the language, not the party.

| I used to write... | Now I usually write... | Notes |
|---|---|---|
| `llSay(0, "Hi");` | `ll.Say(0, "Hi")` | Functions live under `ll.` |
| `llSay(0, "Hi " + name);` | `ll.Say(0, `Hi {name}`)` | String interpolation is lovely |
| `default { touch_start(...) }` | `LLEvents:on("touch_start", function(detected) ... end)` | Events are callbacks now |
| `llDetectedName(0)` | `detected[1]:getName()` | Detection is 1-based and object-like |
| `llSetTimerEvent(2.0);` | `LLTimers:every(2.0, function() ... end)` | You can have more than one timer |
| `list names;` | `local names = {}` | Tables replace most list gymnastics |
| `llList2String(names, 0)` | `names[1]` | Lua arrays start at 1 |
| `TRUE` / `FALSE` | `true` / `false` | lowercase booleans |
| `if (x) { }` | `if x then ... end` | no curly-brace blocks |
| `x++` | `x += 1` | no `++` |

Official deeper guide: create.secondlife.com (Learn SLua / From LSL to SLua)

If a snippet here disagrees with what your current BB class is teaching, trust the class and the official docs. SLua is still growing up.
