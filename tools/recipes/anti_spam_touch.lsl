// Recipe: Ignore frantic clicking
// Useful for vendors, doors, and anything that talks.

float COOLDOWN = 2.0;
float gReadyAt = 0.0;

default
{
    touch_start(integer n)
    {
        float now = llGetTime();
        if (now < gReadyAt)
        {
            return;
        }
        gReadyAt = now + COOLDOWN;
        llSay(0, "Hello, " + llDetectedName(0) + ".");
    }
}
