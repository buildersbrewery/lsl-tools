// ============================================================
// Beginner Example 01 — Hello on Touch
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Basic script structure (default state + event)
//   - llSay (public chat)
//   - The touch_start event
//
// How to use:
//   1. Create a new script in your inventory or in a prim
//   2. Delete the default code and paste this entire script
//   3. Save
//   4. Touch the object
// ============================================================

default
{
    state_entry()
    {
        // This runs once when the script starts or is reset.
        llSay(0, "Hello! Touch me.");
    }

    touch_start(integer total_number)
    {
        // total_number = how many people touched at the same moment
        // We only care that someone touched us.
        llSay(0, "You touched me! Hello, avatar.");
    }
}
