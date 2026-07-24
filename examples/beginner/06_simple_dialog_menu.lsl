// ============================================================
// Beginner Example 06 — Simple Dialog Menu
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llDialog
//   - Using a negative channel
//   - Basic listen + cleanup
//   - Simple menu choices
//
// This is intentionally simpler than the intermediate dialog
// example so absolute beginners can follow it easily.
// ============================================================

integer gListener;
integer gChannel = -42;   // fixed simple channel for learning

default
{
    state_entry()
    {
        llSay(0, "Touch me to open a simple menu.");
    }

    touch_start(integer total_number)
    {
        key person = llDetectedKey(0);
        
        // Remove any old listener first
        llListenRemove(gListener);
        
        gListener = llListen(gChannel, "", person, "");
        
        llDialog(person, "Choose one:", ["Hello", "Info", "Close"], gChannel);
        
        // Safety timeout
        llSetTimerEvent(30.0);
    }

    listen(integer channel, string name, key id, string message)
    {
        if (channel != gChannel) return;
        
        llListenRemove(gListener);
        llSetTimerEvent(0.0);
        
        if (message == "Hello")
        {
            llSay(0, "Hello, " + name + "!");
        }
        else if (message == "Info")
        {
            llSay(0, "This is a beginner dialog example from Builders Brewery.");
        }
        else
        {
            llSay(0, "Menu closed.");
        }
    }

    timer()
    {
        llListenRemove(gListener);
        llSetTimerEvent(0.0);
        llSay(0, "Menu timed out.");
    }
}
