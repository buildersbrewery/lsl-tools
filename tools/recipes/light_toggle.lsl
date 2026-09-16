// Recipe: Touch to toggle full-bright / dim
// Drop this in a lamp prim. Touch on, touch off.

integer gOn = FALSE;

default
{
    touch_start(integer n)
    {
        gOn = !gOn;
        llSetPrimitiveParams([
            PRIM_FULLBRIGHT, ALL_SIDES, gOn,
            PRIM_GLOW, ALL_SIDES, gOn * 0.2,
            PRIM_POINT_LIGHT, gOn, <1.0, 0.95, 0.8>, 1.0, 8.0, 0.0
        ]);
    }
}
