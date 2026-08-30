-- SLua Practice 10 — Sandbox Reminder
-- Drop this in the BB Sandbox or give it to new students.

ll.SetText("BB SLua Practice\nTouch me", vector(0.4, 0.9, 1.0), 1)

LLEvents:on("touch_start", function(detected)
    ll.Say(0, "You are in the right place.")
    ll.Say(0, "Builders Brewery Sandbox is SLua-enabled — experiment freely here.")
    ll.Say(0, "When you get stuck or excited, bring it to class, study group, or Discord.")
    ll.Say(0, "That loop is how it becomes easy. Have fun!")
end)
