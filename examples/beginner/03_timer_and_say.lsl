// ============================================================
// Beginner Example 03 — Timer + Periodic Message
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llSetTimerEvent
//   - The timer event
//   - Turning a timer off
// ============================================================

integer gCount = 0;

default
{
    state_entry()
    {
        llSay(0, "Timer example started. I will speak every 10 seconds.");
        llSetTimerEvent(10.0);   // fire every 10 seconds
    }

    timer()
    {
        gCount += 1;
        llSay(0, "Tick #" + (string)gCount);
        
        // Optional: stop after 5 ticks
        if (gCount >= 5)
        {
            llSetTimerEvent(0.0);  // 0.0 turns the timer off
            llSay(0, "Timer stopped.");
        }
    }

    touch_start(integer total_number)
    {
        // Reset the counter and restart the timer when touched
        gCount = 0;
        llSetTimerEvent(10.0);
        llSay(0, "Timer restarted.");
    }
}
