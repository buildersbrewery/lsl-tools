// ============================================================
// Intermediate Example 03 — Link Messages (multi-prim communication)
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llMessageLinked
//   - link_message event
//   - Simple request/response pattern between scripts in a linkset
//
// Setup:
//   Put this script in the root prim. Create a second script in a
//   child prim that listens for link messages and replies.
// ============================================================

integer LINK_CMD_PING     = 100;
integer LINK_CMD_PONG     = 101;
integer LINK_CMD_SET_TEXT = 102;

default
{
    state_entry()
    {
        llOwnerSay("Root script ready. Touch to send a ping to the linkset.");
    }

    touch_start(integer total_number)
    {
        // Send a ping to every prim in the linkset
        llMessageLinked(LINK_SET, LINK_CMD_PING, "ping from root", llGetKey());
        llOwnerSay("Ping sent.");
    }

    link_message(integer sender_num, integer num, string str, key id)
    {
        if (num == LINK_CMD_PONG)
        {
            llOwnerSay("Received pong from link #" + (string)sender_num + " — " + str);
        }
        else if (num == LINK_CMD_SET_TEXT)
        {
            llSetText(str, <1,1,1>, 1.0);
        }
    }
}
