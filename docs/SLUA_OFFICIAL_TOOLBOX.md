# SLua Official Toolbox

A friendly map of what Linden Lab actually ships in `slua_definitions.yaml`.

This page is a practice card for Builders Brewery students. It is not a class packet and it is not a substitute for the official portal.
If a name here disagrees with [create.secondlife.com/script](https://create.secondlife.com/script/) or [secondlife/lsl-definitions](https://github.com/secondlife/lsl-definitions), trust those.

Checked against official files on 15 September 2026.

SLua is based on Luau. That is the language. The feast is optional.

## The two big helpers

These are the names you will type the most after `ll.`.

### LLEvents

Sign up for the world poking your script.

| Method | What it does |
|---|---|
| `LLEvents:on(event, fn)` | Run `fn` every time that event happens. You can add more than one. |
| `LLEvents:once(event, fn)` | Run `fn` one time, then drop it. |
| `LLEvents:off(event, fn)` | Stop that handler. |
| `LLEvents:handlers(event)` | List who is listening. Handy when debugging. |
| `LLEvents:eventNames()` | List events that currently have handlers. |

Official note: you may attach several handlers to the same event. They run in the order you added them.

### LLTimers

Clocks. You may have more than one.

| Method | What it does |
|---|---|
| `LLTimers:every(seconds, fn)` | Repeat. |
| `LLTimers:once(seconds, fn)` | Fire once, then go home. |
| `LLTimers:off(fn)` | Cancel that timer. |

Official warning worth taping to the monitor: **do not mix `LLTimers` with old LSL timer calls** such as `llcompat.SetTimerEvent`. They share the same underlying event and will step on each other.

## Two doors into the LSL function family

| You type | Meaning |
|---|---|
| `ll.Say(...)` | Shared LSL/SLua library, SLua-native habits (1-based indexes unless noted). |
| `llcompat.Say(...)` | Same family, but aimed at matching old LSL semantics. |

If a class says "use `ll.`" and a snippet you found online uses `llcompat.`, that is not a coin flip. Pick one style for the script and stay with it.

The giant list of `ll*` functions still lives in official `lsl_definitions.yaml` (526 functions on the 15 Sep 2026 check).

## Libraries you can reach for

| Library | When a student actually wants it |
|---|---|
| `lljson` | Save a table as text (`encode` / `decode`). `slencode` / `sldecode` keep SL types. |
| `llbase64` | Turn binary-ish data into plain text and back. |
| `llprim` | Table-style particles and face media. |
| `vector` | Build and poke `vector(x, y, z)` without angle brackets. |
| `quaternion` | Rotations. `rotation` is an alias. |
| `uuid` | Keys / ids. |
| `integer` | 64-bit integer math when a plain `number` is not enough. |
| `string` / `table` / `utf8` | Everyday Lua furniture. |
| `math` | Numbers, rounding, trig. |
| `bit32` | Bit twiddling. |
| `buffer` | Raw binary. Taste this later. |
| `coroutine` | Pause without inventing a state machine. Better after hello-touch is easy. |
| `os` | Time helpers. |
| `debug` | Peek under the hood. Not a beginner toy. |

## Events you can subscribe to

These are the official LSL event names from `lsl_definitions.yaml` (43 on the 15 Sep 2026 check). In SLua you usually attach them with `LLEvents:on("name", ...)`.

- start / stop of contact: `touch_start`, `touch`, `touch_end`, `collision_start`, `collision`, `collision_end`, `land_collision_start`, `land_collision`, `land_collision_end`
- time and chat: `timer`, `listen`
- life of the object: `state_entry`, `state_exit`, `on_rez`, `attach`, `object_rez`, `changed`
- sensing: `sensor`, `no_sensor`
- movement targets: `at_target`, `not_at_target`, `at_rot_target`, `not_at_rot_target`, `moving_start`, `moving_end`
- permissions and money: `run_time_permissions`, `money`, `transaction_result`, `experience_permissions`, `experience_permissions_denied`
- data in and out: `dataserver`, `email`, `link_message`, `linkset_data`, `http_response`, `http_request`, `remote_data`
- combat / damage: `on_death`, `on_damage`, `final_damage`
- other: `control`, `game_control`, `path_update`

`state_entry` is still in that official list. In the SLua practice scripts here we still call our own setup function at the bottom, because the old LSL "this runs for free" habit has surprised people.

## How this was built

Read from:

- https://github.com/secondlife/lsl-definitions/blob/main/slua_definitions.yaml
- https://github.com/secondlife/lsl-definitions/blob/main/lsl_definitions.yaml

Not invented in group chat. When Linden changes the YAML, this page should be walked again.

Next practice: [Gotchas](SLUA_GOTCHAS.md), [Compiler and Memory](COMPILER_AND_MEMORY_CARD.md), [Pocket Map](SLUA_POCKET_MAP.md), and the scripts in `examples/slua/`.
