-- SLua Practice 01 — Hello Touch
-- Builders Brewery Practice Toolbox
-- First win. Touch it. It says hello.

LLEvents:on("touch_start", function(detected)
    local name = detected[1]:getName()
    ll.Say(0, `Hello, {name}! Welcome to SLua practice.`)
end)
