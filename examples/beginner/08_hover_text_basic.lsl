// ============================================================
// Beginner Example 08 — Basic Hover Text
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llSetText
//   - Changing the floating text above an object
//   - Simple color and alpha values
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        // text, color (RGB 0–1), alpha (0–1)
        llSetText("Hello from Builders Brewery", <1.0, 1.0, 1.0>, 1.0);
        llSay(0, "Hover text set. Touch me to change it.");
    }

    touch_start(integer total_number)
    {
        string name = llDetectedName(0);
        llSetText("Touched by\n" + name, <0.2, 0.8, 1.0>, 1.0);
    }
}
