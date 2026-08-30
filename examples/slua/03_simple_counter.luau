-- SLua Practice 03 — Simple Counter

local count = 0

LLEvents:on("touch_start", function(detected)
    count += 1
    ll.SetText(`Touches: {count}`, vector(1, 1, 1), 1)
    ll.Say(0, `Touch count is now {count}`)
end)
