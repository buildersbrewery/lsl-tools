# LSL and SLua, side by side

Same job. Two dialects. Read them out loud once, then go rez the SLua file.

Official docs win if a spelling here is stale.

## Hello on touch

**LSL**

```lsl
default
{
    touch_start(integer n)
    {
        string name = llDetectedName(0);
        llSay(0, "Hello, " + name);
    }
}
```

**SLua**

```lua
LLEvents:on("touch_start", function(detected)
    local name = detected[1]:getName()
    ll.Say(0, `Hello, {name}`)
end)
```

Notice the quiet traps: `ll.` prefix, first detected avatar is `[1]`, and the string uses backticks.

## Move up a little

**LSL**

```lsl
llSetPos(llGetPos() + <0.0, 0.0, 0.5>);
```

**SLua**

```lua
ll.SetPos(ll.GetPos() + vector(0.0, 0.0, 0.5))
```

## A tiny config

**LSL** (two lists you have to keep in step)

```lsl
list keys = ["channel", "range"];
list vals = [5, 10.0];
```

**SLua**

```lua
local config = {
    channel = 5,
    range = 10.0,
}
ll.OwnerSay("Channel is " .. tostring(config.channel))
```

## A repeating pulse

**LSL** (one timer per script)

```lsl
llSetTimerEvent(2.0);

timer()
{
    llSetTimerEvent(2.0);
    llSay(0, "tick");
}
```

**SLua** (you can have more than one)

```lua
LLTimers:every(2.0, function()
    ll.Say(0, "tick")
end)
```

See `12_two_timers.luau` when you want the second clock.

## Owner only

**LSL**

```lsl
if (llDetectedKey(0) == llGetOwner())
{
    llOwnerSay("Yes, chef.");
}
```

**SLua**

```lua
if detected[1]:getKey() == ll.GetOwner() then
    ll.OwnerSay("Yes, chef.")
end
```

Method names on detected objects have moved a little during beta. If `getKey()` will not save, check the current class notes and official event docs.

## Takeaway

You are not throwing away LSL. You are learning a neighbor language that still answers to `ll`.

Next: [PHRASEBOOK_LSL_TO_SLUA.md](PHRASEBOOK_LSL_TO_SLUA.md) and [../../docs/SLUA_POCKET_MAP.md](../../docs/SLUA_POCKET_MAP.md).
