-- SLua Practice 08 — Tiny Table
-- Tables can be lists AND dictionaries. That is the big shift from LSL.

local greetings = {
    "Hey there!",
    "Welcome to the practice corner.",
    "Nice to see you.",
    "Ready to experiment?"
}

local index = 1

LLEvents:on("touch_start", function(detected)
    local name = detected[1]:getName()
    ll.Say(0, `{greetings[index]} ({name})`)
    index += 1
    if index > #greetings then
        index = 1
    end
end)
