// ============================================================
// Advanced Example 05 — SLua Readiness Notes (LSL side)
// Builders Brewery LSL Tools
//
// This file is intentionally an LSL script that documents
// concepts creators should understand while preparing for SLua.
//
// SLua (Second Life's Lua-based scripting) is in active rollout.
// Exact syntax and available libraries continue to evolve.
// Always check the current official SLua documentation.
//
// Key preparation ideas for LSL creators:
//
// 1. Clean structure and clear event handling still matter.
// 2. Linkset Data and modern storage patterns transfer well.
// 3. Reducing reliance on extreme LSL workarounds makes
//    future migration easier.
// 4. Understanding permissions, detection, and communications
//    remains essential regardless of language.
//
// When official SLua example style stabilizes, additional
// side-by-side examples can be added to this repository.
// ============================================================

default
{
    state_entry()
    {
        llOwnerSay("SLua readiness notes script loaded.");
        llOwnerSay("This is a teaching placeholder. See docs/PRIORITY_TOPICS.md and official SLua resources.");
    }

    touch_start(integer total_number)
    {
        llSay(0, "Prepare by mastering clean LSL patterns, Linkset Data, and modern communications. SLua builds on good fundamentals.");
    }
}
