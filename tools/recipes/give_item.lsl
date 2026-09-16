// Recipe: Touch to receive a copy of inventory item "Gift"
// Put a notecard or object named Gift in this prim first.

string GIFT_NAME = "Gift";

default
{
    touch_start(integer n)
    {
        if (llGetInventoryType(GIFT_NAME) == INVENTORY_NONE)
        {
            llSay(0, "Nothing named Gift is in this prim yet.");
            return;
        }
        llGiveInventory(llDetectedKey(0), GIFT_NAME);
    }
}
