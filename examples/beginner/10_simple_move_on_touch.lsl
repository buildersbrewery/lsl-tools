// ============================================================
// Beginner Example 10 — Simple Move on Touch
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llSetPos
//   - Reading the current position
//   - Moving an object a short distance when touched
//
// Note: The object must be able to move (not locked, proper
// permissions, and usually physical or using appropriate methods
// depending on context). For learning, try this on a simple
// box you own in a sandbox.
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        llSay(0, "Touch me and I will try to move upward a little.");
    }

    touch_start(integer total_number)
    {
        vector pos = llGetPos();
        
        // Move 0.5 m upward
        vector newPos = pos + <0.0, 0.0, 0.5>;
        
        llSetPos(newPos);
        llSay(0, "Moved up. New height: " + (string)newPos.z);
    }
}
