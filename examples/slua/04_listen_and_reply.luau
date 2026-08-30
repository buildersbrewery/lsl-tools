-- SLua Practice 04 — Listen and Reply
-- Say: /5 hello    or    /5 dance

local CHANNEL = 5

ll.Listen(CHANNEL, "", "", "")
ll.Say(0, `Listening on channel {CHANNEL}. Try /5 hello`)

LLEvents:on("listen", function(channel, name, id, message)
    if channel ~= CHANNEL then return end
    local msg = string.lower(message)
    if msg == "hello" then
        ll.Say(0, `Hey {name}! Nice to hear from you.`)
    elseif msg == "dance" then
        ll.Say(0, "I would dance, but I am just a practice box.")
    else
        ll.Say(0, `I heard you say: {message}`)
    end
end)
