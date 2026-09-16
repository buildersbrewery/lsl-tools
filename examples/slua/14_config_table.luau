-- SLua Practice 14 — Config Table
-- Builders Brewery Practice Toolbox
-- One table holds the settings. Change the table, not five loose variables.

local config = {
    channel = 7,
    greeting = "Bench is open.",
    owner_only = false,
}

LLEvents:on("touch_start", function(detected)
    local name = detected[1]:getName()
    local who = detected[1]:getKey()
    if config.owner_only and who ~= ll.GetOwner() then
        ll.InstantMessage(who, "Owner practice only. Come back with the owner.")
        return
    end
    ll.Say(0, `{config.greeting} Hi {name}. Channel {config.channel}.`)
end)
