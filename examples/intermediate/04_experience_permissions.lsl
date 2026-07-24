// ============================================================
// Intermediate Example 04 — Experience Permissions (skeleton)
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Basic pattern for requesting experience permissions
//   - experience_permissions / experience_permissions_denied events
//
// Requirements:
//   - The object must be part of an Experience that the avatar
//     can be asked to grant.
//   - Exact permission constants and behavior should be verified
//     against the current official documentation.
// ============================================================

default
{
    touch_start(integer total_number)
    {
        key av = llDetectedKey(0);
        
        // Request experience permissions from the touching avatar.
        // Replace with the specific permissions your experience needs.
        llRequestExperiencePermissions(av, "");
        llOwnerSay("Experience permission request sent to " + llKey2Name(av));
    }

    experience_permissions(key agent_id)
    {
        llOwnerSay("Permissions granted by " + llKey2Name(agent_id));
        // Continue with experience-enabled actions here
    }

    experience_permissions_denied(key agent_id, integer reason)
    {
        llOwnerSay("Permissions denied by " + llKey2Name(agent_id) 
            + " — reason code: " + (string)reason);
    }
}
