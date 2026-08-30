-- SLua Practice 07 — Sensor Hello
-- Looks for nearby agents and greets the closest one.

ll.SensorRepeat("", NULL_KEY, AGENT, 10.0, PI, 8.0)
ll.Say(0, "Sensor on. Looking for people nearby...")

LLEvents:on("sensor", function(num_detected)
    local name = ll.DetectedName(1)
    local dist = ll.VecDist(ll.GetPos(), ll.DetectedPos(1))
    ll.Say(0, `Hello {name} — about {math.floor(dist)} m away`)
end)
