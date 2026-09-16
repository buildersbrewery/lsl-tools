-- 15 hovertext last said
-- Compiler dropdown: Lua
-- Challenge cousin: listen + hover text.
-- In local chat type: /5 hello there
-- Official docs win if a spelling here goes stale.

local CHANNEL = 5

ll.Listen(CHANNEL, "", "", "")

LLEvents:on("listen", function(channel, name, id, message)
    ll.SetText(name .. ": " .. message, vector(1, 1, 1), 1.0)
    ll.Say(0, "Noted.")
end)

ll.OwnerSay(`Listening on channel {CHANNEL}. Whisper me a line.`)
