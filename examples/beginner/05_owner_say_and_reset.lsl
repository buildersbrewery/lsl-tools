// ============================================================
// Beginner Example 05 — Owner Say + Reset
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llOwnerSay (only the owner hears it)
//   - llResetScript
//   - Difference between public chat and owner-only messages
// ============================================================

default
{
    state_entry()
    {
        llOwnerSay("Script started. Only you (the owner) can see this message.");
        llSay(0, "Public message: script is running.");
    }

    touch_start(integer total_number)
    {
        key toucher = llDetectedKey(0);
        
        if (toucher == llGetOwner())
        {
            llOwnerSay("Owner touched me — resetting in 2 seconds...");
            llSetTimerEvent(2.0);
        }
        else
        {
            llSay(0, "Only the owner can reset this script by touching it.");
        }
    }

    timer()
    {
        llSetTimerEvent(0.0);
        llResetScript();
    }
}
