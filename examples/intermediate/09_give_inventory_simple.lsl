// ============================================================
// Intermediate Example 09 — Simple Inventory Give
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Detecting a touch
//   - Giving an inventory item to the toucher
//   - Basic permission / existence checks
//
// Setup:
//   Place a notecard or object named "Gift" in the same prim.
//
// Complementary practice material only.
// ============================================================

string GIFT_NAME = "Gift";

default
{
    state_entry()
    {
        if (llGetInventoryType(GIFT_NAME) == INVENTORY_NONE)
        {
            llOwnerSay("Please place an inventory item named \"" + GIFT_NAME + "\" in this prim.");
        }
        else
        {
            llSay(0, "Touch me to receive a copy of \"" + GIFT_NAME + "\".");
        }
    }

    touch_start(integer total_number)
    {
        key toucher = llDetectedKey(0);
        
        if (llGetInventoryType(GIFT_NAME) == INVENTORY_NONE)
        {
            llSay(0, "Sorry, the gift is missing.");
            return;
        }
        
        // Give a copy (works for most common inventory types)
        llGiveInventory(toucher, GIFT_NAME);
        llSay(0, "Delivered \"" + GIFT_NAME + "\" to " + llDetectedName(0) + ".");
    }

    changed(integer change)
    {
        if (change & CHANGED_INVENTORY)
        {
            // Re-check when inventory changes
            llResetScript();
        }
    }
}
