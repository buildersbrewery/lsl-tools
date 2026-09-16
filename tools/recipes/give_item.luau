-- Recipe: Touch to receive a copy of inventory item "Gift"
-- Compiler dropdown: Lua
-- Put a notecard or object named Gift in this prim first.

local GIFT_NAME = "Gift"

LLEvents:on("touch_start", function(detected)
    if ll.GetInventoryType(GIFT_NAME) == INVENTORY_NONE then
        ll.Say(0, "Nothing named Gift is in this prim yet.")
        return
    end
    ll.GiveInventory(detected[1]:getKey(), GIFT_NAME)
end)
