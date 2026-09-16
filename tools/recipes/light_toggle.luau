-- Recipe: Touch to toggle full-bright / dim
-- Compiler dropdown: Lua
-- Drop this in a lamp prim. Touch on, touch off.

local on = false

LLEvents:on("touch_start", function(detected)
    on = not on
    local glow = 0.0
    if on then
        glow = 0.2
    end
    ll.SetPrimitiveParams({
        PRIM_FULLBRIGHT, ALL_SIDES, on,
        PRIM_GLOW, ALL_SIDES, glow,
        PRIM_POINT_LIGHT, on, vector(1.0, 0.95, 0.8), 1.0, 8.0, 0.0,
    })
end)
