// ============================================================
// Beginner Example 09 — Say, Whisper, and OwnerSay
// Builders Brewery LSL Tools
//
// What you will learn:
//   - The difference between public chat, whisper, and owner-only messages
//   - When to use each
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        llSay(0, "This is a normal public message (llSay). Everyone nearby can see it.");
        llWhisper(0, "This is a whisper (llWhisper). Only very close avatars hear it.");
        llOwnerSay("This is an owner-only message (llOwnerSay). Only you see this.");
    }

    touch_start(integer total_number)
    {
        key who = llDetectedKey(0);
        
        if (who == llGetOwner())
        {
            llOwnerSay("You touched me. This private confirmation is only for the owner.");
        }
        else
        {
            llWhisper(0, "Hello, " + llDetectedName(0) + ". (whispered)");
        }
    }
}
