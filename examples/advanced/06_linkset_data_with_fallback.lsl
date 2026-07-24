// ============================================================
// Advanced Example 06 — Linkset Data with Simple Fallback
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Writing and reading Linkset Data
//   - Checking result codes
//   - Providing a graceful fallback message
//
// Complementary practice material only.
// ============================================================

string KEY_MESSAGE = "bb_display_message";

default
{
    state_entry()
    {
        integer result = llLinksetDataWrite(KEY_MESSAGE, "Hello from Linkset Data");
        
        if (result == LINKSETDATA_OK)
        {
            llOwnerSay("Config stored successfully.");
        }
        else
        {
            llOwnerSay("Could not write Linkset Data (code " + (string)result + "). Using fallback.");
        }
    }

    touch_start(integer total_number)
    {
        string msg = llLinksetDataRead(KEY_MESSAGE);
        
        if (msg == "")
        {
            // Fallback if nothing is stored or feature is unavailable
            llSay(0, "No stored message — fallback greeting.");
        }
        else
        {
            llSay(0, msg);
        }
    }
}
