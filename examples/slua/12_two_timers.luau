-- SLua Practice 12 — Two Timers
-- In LSL you usually wrestle one timer. In SLua you can have several.

LLTimers:every(2.0, function()
    ll.Say(0, "fast tick")
end)

LLTimers:every(7.0, function()
    ll.Say(0, "slow tick")
end)

LLEvents:on("touch_start", function(detected)
    ll.Say(0, "Both timers keep running. That is the point of this toy.")
end)
