-- SLua Practice 09 — Collision Note

LLEvents:on("collision_start", function(detected)
    local name = detected[1]:getName()
    ll.Say(0, `Oof! {name} bumped into me.`)
    ll.SetText(`Bumped by\n{name}`, vector(1.0, 0.7, 0.2), 1)
end)
