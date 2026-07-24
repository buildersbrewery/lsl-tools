// ============================================================
// Advanced Example 04 — Pathfinding Character Skeleton
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Basic pattern for creating and controlling a pathfinding character
//   - Common events and status checks
//
// Notes:
//   - Pathfinding requires the region to support it and the object
//     to be set up correctly (usually physical + character).
//   - Always cross-check current function names and constants
//     against the official wiki — pathfinding has evolved.
// ============================================================

default
{
    state_entry()
    {
        // Create a character (exact parameters depend on current API)
        // llCreateCharacter([...]);
        
        llOwnerSay("Pathfinding skeleton loaded. Implement create/update/delete calls for your use case.");
    }

    // Example event handlers — names may vary with current implementation
    // path_update(integer type, list reserved)
    // {
    //     // Handle arrival, failure, evasion, etc.
    // }

    touch_start(integer total_number)
    {
        // Example: tell the character to move somewhere
        // llPatrolPoints([...]);
        // or llNavigateTo(...);
        
        llOwnerSay("Touch received — add your navigation call here.");
    }
}
