# Example Scripts

These examples are organized by skill level. Every script is self-contained and heavily commented so it can be used for self-study or as quick practice.

**Important:** These materials are complementary to Builders Brewery live classes. They do not replace the instructors’ teaching or their prepared class materials. See `docs/COMPLEMENTARY_TO_CLASSES.md`.

## Beginner

- `01_hello_touch.lsl` — Basic structure, `touch_start`, `llSay`
- `02_simple_sensor.lsl` — `llSensorRepeat`, `sensor` / `no_sensor`
- `03_timer_and_say.lsl` — `llSetTimerEvent`, `timer` event
- `04_listen_and_reply.lsl` — `llListen`, simple commands
- `05_owner_say_and_reset.lsl` — `llOwnerSay`, owner-only logic, reset
- `06_simple_dialog_menu.lsl` — Simple `llDialog` for absolute beginners
- `07_touch_and_owner_only.lsl` — Different response for owner vs others
- `08_hover_text_basic.lsl` — Basic floating text with llSetText
- `09_say_and_whisper.lsl` — Public say, whisper, and owner-only messages
- `10_simple_move_on_touch.lsl` — Move the object a short distance on touch

## Intermediate

- `01_basic_dialog.lsl` — Dialog menus with cleanup
- `02_http_request_basic.lsl` — `llHTTPRequest` + `http_response`
- `03_link_message.lsl` — Multi-prim communication
- `04_experience_permissions.lsl` — Experience permissions skeleton
- `05_simple_notecard_reader.lsl` — Reading notecard lines
- `06_linkset_data_config.lsl` — Linkset Data as simple config
- `07_clean_link_message_pattern.lsl` — Readable link-message command pattern
- `08_sensor_with_filter.lsl` — Sensor with practical filtering and distance
- `09_give_inventory_simple.lsl` — Simple inventory give on touch
- `10_listen_owner_commands.lsl` — Owner-only chat commands on a private channel
- `11_changed_sit_detection.lsl` — Detect sit / unsit with the changed event

## Advanced

- `01_linkset_data_basic.lsl` — Linkset Data read/write and event
- `02_combat_damage_basic.lsl` — Combat / damage awareness skeleton
- `03_json_list_patterns.lsl` — JSON conversion and safe extraction
- `04_pathfinding_skeleton.lsl` — Pathfinding starting point
- `05_slua_readiness_notes.lsl` — Notes for preparing for SLua
- `06_linkset_data_with_fallback.lsl` — Linkset Data with graceful fallback
- `07_experience_key_basic.lsl` — Basic experience permissions pattern
- `08_simple_particles.lsl` — Minimal particle system on/off pattern

## SLua (complementary patterns only)

See the `slua/` folder.

These are general awareness and practice notes only.  
They are **not** a substitute for the structured SLua classes taught at Builders Brewery.

## Contributing new examples

1. Keep the example focused on one clear concept.
2. Write clear comments that explain what the reader will learn.
3. Respect the complementary rule — do not reproduce live class curricula or instructor materials.
4. Prefer clarity over cleverness.
