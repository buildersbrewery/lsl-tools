-- SLua Practice 02 — Color Toggle
-- Touch to flip between two colors.

local isWarm = true

LLEvents:on("touch_start", function(detected)
    if isWarm then
        ll.SetColor(vector(0.2, 0.6, 1.0), ALL_SIDES)
        ll.Say(0, "Cool mode")
    else
        ll.SetColor(vector(1.0, 0.5, 0.1), ALL_SIDES)
        ll.Say(0, "Warm mode")
    end
    isWarm = not isWarm
end)
