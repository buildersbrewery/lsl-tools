// Recipe: Simple door toggle
// Put this in the door prim. Touch to swing, touch again to swing back.

rotation CLOSED;
rotation OPEN_DELTA;

default
{
    state_entry()
    {
        CLOSED = llGetLocalRot();
        OPEN_DELTA = llEuler2Rot(<0.0, 0.0, 80.0> * DEG_TO_RAD);
    }

    touch_start(integer n)
    {
        rotation now = llGetLocalRot();
        if (llAngleBetween(now, CLOSED) < 0.1)
        {
            llSetLocalRot(OPEN_DELTA * CLOSED);
        }
        else
        {
            llSetLocalRot(CLOSED);
        }
    }
}
