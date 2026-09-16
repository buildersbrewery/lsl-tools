-- SLua Practice 13 — Vector Nudge
-- Builders Brewery Practice Toolbox
-- Touch to hop up a little. Touch again after it settles.
-- This is how you say <0,0,0.25> without the angle brackets.

LLEvents:on("touch_start", function(detected)
    local here = ll.GetPos()
    local hop = vector(0.0, 0.0, 0.25)
    ll.SetPos(here + hop)
    ll.Say(0, `Nudged up. New z is {ll.GetPos().z}`)
end)
