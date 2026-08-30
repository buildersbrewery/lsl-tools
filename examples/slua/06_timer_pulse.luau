-- SLua Practice 06 — Timer Pulse
-- Official helpers: LLTimers:every / once / off
-- (Luau the language, not luau the party.)

local beats = 0

LLTimers:every(3.0, function()
    beats += 1
    ll.SetText(`Pulse {beats}`, vector(0.6, 0.9, 1.0), 1)
    ll.Say(0, `Pulse {beats}`)
end)
