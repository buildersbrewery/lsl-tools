// ============================================================
// Beginner Example 04 — Listen and Reply
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llListen
//   - The listen event
//   - Simple command handling
//   - Cleaning up a listener
// ============================================================

integer gListener;

default
{
    state_entry()
    {
        // Listen on channel 1 for messages from anyone
        gListener = llListen(1, "", NULL_KEY, "");
        llSay(0, "Listening on channel 1. Say /1 hello");
    }

    listen(integer channel, string name, key id, string message)
    {
        if (channel != 1) return;
        
        string lower = llToLower(llStringTrim(message, STRING_TRIM));
        
        if (lower == "hello")
        {
            llSay(0, "Hello, " + name + "!");
        }
        else if (lower == "help")
        {
            llSay(0, "Available commands on channel 1: hello, help, stop");
        }
        else if (lower == "stop")
        {
            llListenRemove(gListener);
            llSay(0, "Listener removed. Reset the script to start again.");
        }
        else
        {
            llSay(0, "I heard you say: " + message);
        }
    }
}
