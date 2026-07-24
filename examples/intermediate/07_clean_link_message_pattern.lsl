// ============================================================
// Intermediate Example 07 — Clean Link Message Pattern
// Builders Brewery LSL Tools
//
// What you will learn:
//   - A readable, maintainable way to use link messages
//   - Using integer constants for commands
//   - Basic request / reply style communication
//
// This is a general pattern useful in many multi-script objects.
// It is complementary practice material only.
// ============================================================

// Command constants — keep them in one place
integer CMD_PING     = 1001;
integer CMD_PONG     = 1002;
integer CMD_SET_LABEL = 1003;

default
{
    state_entry()
    {
        llOwnerSay("Clean link-message pattern ready. Touch to send a ping.");
    }

    touch_start(integer total_number)
    {
        // Broadcast a ping to the rest of the linkset
        llMessageLinked(LINK_SET, CMD_PING, "ping", llGetKey());
    }

    link_message(integer sender_num, integer num, string str, key id)
    {
        if (num == CMD_PING)
        {
            // Reply only to the sender
            llMessageLinked(sender_num, CMD_PONG, "pong from " + (string)llGetLinkNumber(), llGetKey());
        }
        else if (num == CMD_PONG)
        {
            llOwnerSay("Received: " + str);
        }
        else if (num == CMD_SET_LABEL)
        {
            llSetText(str, <1.0, 1.0, 1.0>, 1.0);
        }
    }
}
