# Priority Topics for Builders Brewery LSL Tools
**Organized by importance to the community and readiness for the future of Second Life**  
Last updated: July 2026

This list guides which example scripts, documentation, and teaching materials we create or expand first. It balances:

- What residents ask for most often
- Core skills needed to create content of any kind
- Preparation for major platform changes already underway

---

## Priority 1 — Critical for the Near Future (do these first)

| Topic | Why it matters now | Skill levels |
|-------|--------------------|--------------|
| **SLua (Lua) basics & migration** | Official modern scripting language in open beta / rolling out. Higher memory, faster, modern features. The biggest long-term shift for creators. | Beginner intro → Intermediate migration patterns → Advanced |
| **Linkset Data** | Modern, persistent key-value storage across a linkset. Replaces many old workarounds. Essential for clean multi-script objects. | Intermediate → Advanced |
| **PBR / glTF materials & mesh awareness** | Major visual pipeline. Creators who understand how scripts interact with modern materials stay relevant. | Intermediate awareness → Advanced |
| **Experiences** | Still the proper way to do persistent avatar-specific permissions and advanced interactions. | Intermediate → Advanced |

## Priority 2 — High-Demand Core Skills (always needed)

| Topic | Why it matters | Skill levels |
|-------|----------------|--------------|
| **Events & program flow** (touch, timer, sensor, listen, state) | Foundation of every script. Most beginner confusion starts here. | Beginner → Intermediate |
| **Communications** (say/ownerSay, listen, dialog menus, link messages) | How objects talk to avatars and to each other. Extremely common request. | Beginner → Intermediate |
| **HTTP & external data** | Connecting in-world objects to the web, HUDs, external services. | Intermediate |
| **Notecards & inventory** | Configuration, multi-language support, product systems. | Beginner → Intermediate |
| **Permissions & security basics** | Avoiding common mistakes that frustrate users or break products. | Intermediate |

## Priority 3 — Important Supporting Skills

| Topic | Why it matters | Skill levels |
|-------|----------------|--------------|
| **Performance & script limits** | Heavier modern content makes efficiency more important. | Intermediate → Advanced |
| **JSON & structured data** | Cleaner data handling as scripts grow. | Intermediate → Advanced |
| **Pathfinding** | Still useful for NPCs, animals, guided experiences. | Advanced |
| **Combat 2.0 / damage systems** | Relevant for roleplay, games, and certain product categories. | Advanced |
| **Multi-script architecture** | How to split work across scripts cleanly (link messages + Linkset Data). | Intermediate → Advanced |

## Priority 4 — Ongoing / Situational

- Animation & avatar control patterns
- Vehicle basics
- Media / shared media controls
- Simple AI-assisted workflows (see AI preparation docs)
- Debugging and reading error messages

---

## How this list is maintained

1. Official Linden Lab platform changes (SLua, materials, etc.) automatically rise in priority.
2. Recurring questions from Builders Brewery classes and groups influence Priority 2 and 3.
3. Future privacy-respecting signals from group conversation themes (see SmartBots design) can suggest new or rising topics.
4. The list is reviewed when major server or viewer features ship.

New example scripts and documentation should normally follow this priority order unless a sudden platform change requires an exception.
