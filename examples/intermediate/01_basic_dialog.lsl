// ============================================================
// Intermediate Example 01 — Basic Dialog Menu
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llDialog
//   - listen event + channel handling
//   - Cleaning up listeners
// ============================================================

integer gListener;
integer gChannel;

default
{
    touch_start(integer total_number)
    {
        key toucher = llDetectedKey(0);
        
        // Use a negative channel so regular chat doesn't interfere
        gChannel = -1 * (integer)llFrand(1000000) - 1;
        
        // Remove any previous listener just in case
        llListenRemove(gListener);
        
        gListener = llListen(gChannel, "", toucher, "");
        
        llDialog(toucher, "Choose an option:", ["Option A", "Option B", "Cancel"], gChannel);
        
        // Safety: close the listener after 60 seconds if no response
        llSetTimerEvent(60.0);
    }

    listen(integer channel, string name, key id, string message)
    {
        if (channel != gChannel) return;
        
        llListenRemove(gListener);
        llSetTimerEvent(0.0);
        
        if (message == "Option A")
        {
            llSay(0, name + " chose Option A.");
        }
        else if (message == "Option B")
        {
            llSay(0, name + " chose Option B.");
        }
        else
        {
            llSay(0, name + " cancelled or chose something else.");
        }
    }

    timer()
    {
        // Timed out — clean up
        llListenRemove(gListener);
        llSetTimerEvent(0.0);
        llSay(0, "Dialog timed out.");
    }
}
