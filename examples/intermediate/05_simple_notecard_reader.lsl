// ============================================================
// Intermediate Example 05 — Simple Notecard Reader
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Requesting notecard data with llGetNotecardLine
//   - The dataserver event
//   - Reading a notecard one line at a time
//
// Setup:
//   Place a notecard named "config" in the same prim as this script.
// ============================================================

string  NOTECARD_NAME = "config";
key     gQueryID;
integer gLine = 0;

default
{
    state_entry()
    {
        if (llGetInventoryType(NOTECARD_NAME) != INVENTORY_NOTECARD)
        {
            llOwnerSay("Please place a notecard named \"" + NOTECARD_NAME + "\" in this prim.");
            return;
        }
        
        gLine = 0;
        gQueryID = llGetNotecardLine(NOTECARD_NAME, gLine);
        llOwnerSay("Reading notecard...");
    }

    dataserver(key query_id, string data)
    {
        if (query_id != gQueryID) return;
        
        if (data != EOF)
        {
            llOwnerSay("Line " + (string)gLine + ": " + data);
            gLine += 1;
            gQueryID = llGetNotecardLine(NOTECARD_NAME, gLine);
        }
        else
        {
            llOwnerSay("Finished reading notecard.");
        }
    }

    changed(integer change)
    {
        if (change & CHANGED_INVENTORY)
        {
            // Restart reading if the notecard is replaced
            llResetScript();
        }
    }
}
