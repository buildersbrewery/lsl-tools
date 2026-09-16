-- Recipe: Ignore frantic clicking
-- Compiler dropdown: Lua
-- Useful for vendors, doors, and anything that talks.

local COOLDOWN = 2.0
local ready_at = 0.0

LLEvents:on("touch_start", function(detected)
    local now = ll.GetTime()
    if now < ready_at then
        return
    end
    ready_at = now + COOLDOWN
    ll.Say(0, `Hello, {detected[1]:getName()}.`)
end)
