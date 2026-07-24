// ============================================================
// Intermediate Example 10 — Owner-Only Chat Commands
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Listening on a private channel
//   - Restricting commands to the owner
//   - Simple command parsing
//   - Clean listener management
//
// Usage:
//   Owner says (on channel 9):  /9 status   or   /9 reset
//
// Complementary practice material only.
// ============================================================

integer COMMAND_CHANNEL = 9;
integer gListener;

default
{
    state_entry()
    {
        gListener = llListen(COMMAND_CHANNEL, "", llGetOwner(), "");
        llOwnerSay("Listening for owner commands on channel " + (string)COMMAND_CHANNEL);
        llOwnerSay("Try: /9 status   or   /9 reset");
    }

    listen(integer channel, string name, key id, string message)
    {
        if (channel != COMMAND_CHANNEL) return;
        if (id != llGetOwner()) return;  // extra safety
        
        string cmd = llToLower(llStringTrim(message, STRING_TRIM));
        
        if (cmd == "status")
        {
            llOwnerSay("Status: running. Free memory approx related tools vary by VM.");
            llOwnerSay("Link number: " + (string)llGetLinkNumber());
        }
        else if (cmd == "reset")
        {
            llOwnerSay("Resetting...");
            llResetScript();
        }
        else
        {
            llOwnerSay("Unknown command. Try: status  or  reset");
        }
    }

    on_rez(integer start_param)
    {
        llResetScript();
    }
}
