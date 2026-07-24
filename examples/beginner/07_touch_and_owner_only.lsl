// ============================================================
// Beginner Example 07 — Touch with Owner-Only Action
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Checking who touched the object
//   - Doing one thing for the owner and something else for others
//   - Basic use of llGetOwner and llDetectedKey
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        llSay(0, "Touch me. The owner gets a special message.");
    }

    touch_start(integer total_number)
    {
        key toucher = llDetectedKey(0);
        key owner   = llGetOwner();
        
        if (toucher == owner)
        {
            llOwnerSay("Hello, owner. This message is only for you.");
            llSetText("Owner touched me", <0.2, 0.8, 0.2>, 1.0);
        }
        else
        {
            string name = llDetectedName(0);
            llSay(0, "Hello, " + name + ". Only the owner gets the private message.");
            llSetText("Someone touched me", <0.8, 0.8, 0.2>, 1.0);
        }
    }
}
