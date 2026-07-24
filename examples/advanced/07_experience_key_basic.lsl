// ============================================================
// Advanced Example 07 — Basic Experience Key Pattern
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Requesting experience permissions
//   - Handling granted / denied outcomes
//   - A minimal clean structure
//
// Notes:
//   - The object must belong to an Experience.
//   - Exact available permissions depend on the Experience setup.
//   - Always verify current official documentation.
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        llOwnerSay("Experience key example loaded. Touch to request permissions.");
    }

    touch_start(integer total_number)
    {
        key av = llDetectedKey(0);
        
        // Request experience permissions from the touching avatar.
        // The second parameter can specify particular permissions
        // depending on current API and Experience configuration.
        llRequestExperiencePermissions(av, "");
        
        llOwnerSay("Permission request sent to " + llKey2Name(av));
    }

    experience_permissions(key agent_id)
    {
        llOwnerSay("Permissions granted by " + llKey2Name(agent_id));
        // Place follow-up actions here (animation, teleport, etc.)
        // according to what your Experience is designed to do.
    }

    experience_permissions_denied(key agent_id, integer reason)
    {
        llOwnerSay("Permissions denied by " + llKey2Name(agent_id)
            + " — reason: " + (string)reason);
    }
}
