# SmartBots Practical Guide for Builders Brewery

Builders Brewery already uses SmartBots extensively with several bots. This guide focuses on practical, low-maintenance ways to get more value from them while protecting resident privacy.

**Official documentation starting point:**  
https://www.mysmartbots.com/docs/SmartBots_Documentation

---

## What SmartBots Is Especially Good For at BB

| Need | SmartBots capability | Notes |
|------|----------------------|-------|
| Group invites | Group Inviter | Core membership growth tool |
| Group chat moderation | Group Chat Control + anti-spam | Live view + short-term logs |
| Notices | Scheduled / automatic notices | Excellent for class reminders, event info, rule reminders |
| Staff visibility | Moderator accounts | Let trusted volunteers help without full ownership access |
| Scripted control | AdminBot library + HTTP API | Advanced — use carefully |
| Member export | Group Export | Useful for internal records (handle data responsibly) |

---

## Recommended Everyday Practices

### 1. Group Chat Monitoring (already in use)
- Keep the 24-hour log window as a support tool for staff, not a public archive.
- When reviewing logs for teaching insights, record only high-level themes (see `SMARTBOTS_KNOWLEDGE_DESIGN.md`).
- Never copy personal conversations into public materials or AI tools.

### 2. Notices That Actually Help
Good uses at a training organization:
- Class schedule reminders
- “New example scripts available” announcements
- Short tips of the week
- Event and sandbox information

Keep notices short, consistent in tone, and not too frequent.

### 3. Moderator Accounts
Give trusted volunteer teachers or greeters moderator access to chat tools rather than full group ownership. This reduces risk and spreads the workload.

### 4. Anti-Spam Settings
Review warning and eject thresholds periodically. A training community benefits from a welcoming but firm stance on spam and harassment.

---

## Privacy & Community Trust Checklist

- [ ] Group members understand that bots help with invites, notices, and moderation
- [ ] Chat logs are treated as private staff tools
- [ ] No raw logs or personal messages are published or fed into public AI systems
- [ ] Only aggregated themes (never identifiable content) ever influence public teaching priorities
- [ ] Staff know how to respond if a resident asks about monitoring

---

## Advanced: AdminBot / LSL Integration (Optional)

SmartBots provides an AdminBot library so LSL scripts can interact with group services (listen to group chat under controlled conditions, send notices, etc.).

**Use only when there is a clear, privacy-respecting need.**  
Examples of appropriate advanced use:
- Automated class-reminder notices triggered by an in-world object
- Controlled systems that help staff, not systems that record or expose resident chat

Any script that touches group chat must follow the same privacy rules as the rest of this project.

---

## Step-by-Step: Common Tasks (High Level)

### Adding or checking a Group Inviter
1. Log into your SmartBots account.
2. Select the relevant group.
3. Configure or review the inviter settings (message, delay, access controls).
4. Test with a secondary account.

### Sending a scheduled notice
1. Open the group in SmartBots.
2. Go to Notices / scheduled notices.
3. Write a short, clear message.
4. Set date/time and confirm.

### Reviewing recent chat (staff only)
1. Open Group Chat Control for the group.
2. Use the log time selector for the recent period you need.
3. Look for support themes or moderation needs only.
4. Do not export or publish personal content.

*(Exact menu names can vary slightly; always refer to the current SmartBots documentation for screenshots and the latest interface.)*

---

## What Builders Brewery Should Document Internally (Private)

- Which bots/accounts are active and who has access
- Which groups each bot serves
- Notice schedule and who is allowed to send notices
- Moderator list and responsibilities
- Escalation path for spam or harassment incidents

Keep this information in a private staff location, not in the public GitHub repository.

---

## Relation to the LSL Tools Project

- SmartBots helps the *community operations* side of Builders Brewery.
- The LSL Tools repository helps the *teaching and scripting* side.
- The only planned connection between them is optional, privacy-first theme signals that can help prioritize new example scripts (see `SMARTBOTS_KNOWLEDGE_DESIGN.md`).

No live data pipeline is active. Any future connection requires explicit leadership approval and the privacy process already outlined.
