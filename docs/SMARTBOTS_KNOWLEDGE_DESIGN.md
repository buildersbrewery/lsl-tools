# SmartBots + Community Knowledge — Privacy-First Design

**Purpose**  
Explore a safe way to let anonymized themes from Builders Brewery group conversations help prioritize teaching topics, while **never** exposing private resident conversations.

This is a design document only. No live connection is active.

---

## Privacy Rules (Non-Negotiable)

1. **No raw chat logs** will ever be stored in this public GitHub repository or any public knowledge base.
2. **No avatar names, UUIDs, or identifiable messages** will be retained or published.
3. Only **aggregated, human-reviewed themes** may influence topic priority (example: “Many recent questions about Linkset Data and SLua migration”).
4. Any future automated pipeline must be opt-in at the group/owner level and must strip personal data before any summary is created.
5. Residents must be able to understand that group chat is monitored for community support purposes and that only high-level themes, never personal conversations, would ever inform public teaching materials.

---

## What SmartBots Currently Provides (relevant parts)

From public SmartBots documentation:

- Group Chat Control Service with chat logs (typically short retention, e.g. 24 hours)
- Ability for moderators/owners to view recent group chat
- AdminBot / LSL libraries and HTTP APIs that can interact with group services
- Daily or live log access for authorized accounts

These are **private tools for group management**, not public data feeds.

---

## Proposed Safe Architecture (Future)

```
SmartBots group logs (private)
        ↓
Authorized human or private script (Builders Brewery staff only)
        ↓
Strip all names, UUIDs, and message text
        ↓
Produce only high-level theme counts or tags
   (e.g. “SLua questions: high”, “Linkset Data: rising”, “Dialog menus: steady”)
        ↓
Human review & approval
        ↓
Optional short note added to PRIORITY_TOPICS.md or a private staff log
```

**Nothing identifiable ever leaves the private staff side.**

---

## Files Prepared for Future Connectivity

| File | Purpose |
|------|---------|
| `docs/SMARTBOTS_KNOWLEDGE_DESIGN.md` | This document — the rules and architecture |
| `docs/PRIORITY_TOPICS.md` | The living priority list that themes could inform |
| Future private staff tools (not in public repo) | Any actual log processing would live outside public GitHub |

---

## What Is Needed on the Human Side

1. **Decision** — Confirm that Builders Brewery leadership wants theme-level signals from group chat to help set teaching priorities.
2. **Access** — A staff member with legitimate SmartBots access to the relevant groups.
3. **Process** — Agree on a simple monthly or quarterly human review: “What themes appeared most often?”
4. **Communication** — Clear notice to group members that chat is monitored for support and community improvement, and that only anonymized themes (never personal conversations) would ever influence public materials.
5. **Technical help (optional later)** — If automation is desired, a trusted person with scripting/API experience would build the private stripping step. This is **not** required to start; a human reading daily logs and noting themes is enough.

---

## What We Will Not Do

- Store or publish chat logs
- Build a public searchable archive of conversations
- Allow any external AI or tool to train on resident messages
- Bypass SmartBots terms of service or Second Life community standards

---

## Status

Design only. Ready for leadership review.  
No code that touches live group chat has been created or will be created without explicit approval and a clear privacy process.
