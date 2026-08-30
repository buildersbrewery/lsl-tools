// Recipe: Use the object description as a tiny config

default
{
    state_entry()
    {
        string msg = llStringTrim(llGetObjectDesc(), STRING_TRIM);
        if (msg == "")
        {
            msg = "Set my description to change this greeting.";
        }
        llSetText(msg, <1,1,1>, 1.0);
    }

    touch_start(integer n)
    {
        llSay(0, llGetObjectDesc());
    }
}
