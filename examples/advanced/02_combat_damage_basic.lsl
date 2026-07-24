// ============================================================
// Advanced Example 02 — Basic Combat / Damage Awareness
// Builders Brewery LSL Tools
//
// What you will learn:
//   - on_damage / final_damage style events (Combat 2.0 era)
//   - llDetectedDamage and related concepts
//   - Adjusting or reacting to damage
//
// Notes:
//   - Exact event names and available functions depend on the
//     current Second Life combat implementation. Always cross-
//     check against the official wiki and server release notes.
//   - This is a teaching skeleton, not a complete combat system.
// ============================================================

default
{
    state_entry()
    {
        llOwnerSay("Combat awareness example loaded.");
        // In a real combat object you would typically set
        // appropriate status flags or health tracking here.
    }

    // Example pattern — adjust event name to match current API
    // (on_damage, final_damage, etc.)
    on_damage(integer num_detected)
    {
        integer i;
        for (i = 0; i < num_detected; ++i)
        {
            // Placeholder — replace with actual damage query calls
            // available in the current combat system, for example:
            // float damage = llDetectedDamage(i);
            // key attacker = llDetectedKey(i);
            
            llOwnerSay("Damage event received (index " + (string)i + ")");
        }
    }
}
