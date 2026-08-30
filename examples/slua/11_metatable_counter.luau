-- SLua Practice 11 — Tiny Metatable Counter
-- A table with a __call metamethod can act like a function AND keep state.

local counter = { count = 0 }

setmetatable(counter, {
    __call = function(self, detected)
        self.count += 1
        local name = detected[1]:getName()
        ll.Say(0, `{name} tapped the magic table. Count: {self.count}`)
        ll.SetText(`Count {self.count}`, vector(0.8, 1.0, 0.6), 1)
    end
})

LLEvents:on("touch_start", counter)
