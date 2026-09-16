-- 16 Linkset Data + JSON note
-- Compiler dropdown: Lua
-- First touch writes a tiny config table into Linkset Data.
-- Later touches read it back.
-- This is the everyday upgrade from parallel LSL lists.
-- Official names for JSON helpers can move. If save fails, check the portal.

local KEY = "bb_config"

local config = {
    greeting = "Welcome to the bench.",
    channel = 5,
}

LLEvents:on("touch_start", function(detected)
    local raw = ll.LinksetDataRead(KEY)
    if raw == "" then
        ll.LinksetDataWrite(KEY, lljson.encode(config))
        ll.OwnerSay("Wrote config to Linkset Data. Touch again to read it.")
    else
        local loaded = lljson.decode(raw)
        if type(loaded) == "table" then
            ll.OwnerSay(tostring(loaded.greeting))
        else
            ll.OwnerSay("Something is in LSD, but it did not decode as a table.")
        end
    end
end)
