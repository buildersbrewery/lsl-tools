-- SLua Practice 05 — Owner Only Touch

LLEvents:on("touch_start", function(detected)
    local toucher = detected[1]:getKey()
    local owner = ll.GetOwner()
    if toucher == owner then
        ll.OwnerSay("Hello owner. This private message is just for you.")
        ll.SetText("Owner touched me", vector(0.3, 1.0, 0.3), 1)
    else
        local name = detected[1]:getName()
        ll.Say(0, `Hi {name}. Only the owner gets the secret message.`)
        ll.SetText("Someone touched me", vector(1.0, 0.8, 0.2), 1)
    end
end)
