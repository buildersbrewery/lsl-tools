// ============================================================
// Intermediate Example 11 — Detecting Sit / Unsit
// Builders Brewery LSL Tools
//
// What you will learn:
//   - The changed event
//   - CHANGED_LINK as a way to notice sit/unsit on a single prim
//   - Greeting the sitter
//
// Setup:
//   Put this in an object that avatars can sit on.
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        llSay(0, "Sit on me. I will notice.");
    }

    changed(integer change)
    {
        if (change & CHANGED_LINK)
        {
            key sitter = llAvatarOnSitTarget();
            
            // For a simple single-prim sit target approach you would
            // normally also call llSitTarget in state_entry.
            // This example focuses on detecting the change.
            
            if (sitter != NULL_KEY)
            {
                llSay(0, "Hello, " + llKey2Name(sitter) + ". Thanks for sitting.");
            }
            else
            {
                llSay(0, "Someone stood up.");
            }
        }
    }
}
