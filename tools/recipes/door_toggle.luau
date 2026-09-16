-- Recipe: Simple door toggle (SLua twin of door_toggle.lsl)
-- Compiler dropdown: Lua
-- Put this in the door prim. Touch to swing, touch again to swing back.

local closed
local open_delta

local function setup()
    closed = ll.GetLocalRot()
    open_delta = ll.Euler2Rot(vector(0.0, 0.0, 80.0) * DEG_TO_RAD)
end

LLEvents:on("touch_start", function(detected)
    local now = ll.GetLocalRot()
    if ll.AngleBetween(now, closed) < 0.1 then
        ll.SetLocalRot(open_delta * closed)
    else
        ll.SetLocalRot(closed)
    end
end)

setup()
