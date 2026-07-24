// ============================================================
// Intermediate Example 06 — Linkset Data as Simple Config
// Builders Brewery LSL Tools
//
// What you will learn:
//   - Using Linkset Data to store configuration values
//   - Reading them back safely
//   - A practical pattern for products and multi-script objects
//
// Requirements:
//   - Region/server that supports Linkset Data
// ============================================================

string CONFIG_KEY = "bb_config_message";

default
{
    state_entry()
    {
        // Write a default config value if none exists
        string current = llLinksetDataRead(CONFIG_KEY);
        
        if (current == "")
        {
            llLinksetDataWrite(CONFIG_KEY, "Welcome to this Builders Brewery example object.");
            llOwnerSay("Default config written to Linkset Data.");
        }
        else
        {
            llOwnerSay("Existing config found: " + current);
        }
    }

    touch_start(integer total_number)
    {
        string msg = llLinksetDataRead(CONFIG_KEY);
        
        if (msg == "")
        {
            llSay(0, "No configuration message set.");
        }
        else
        {
            llSay(0, msg);
        }
    }

    // Optional: allow owner to update the message via chat on channel 7
    // (Keep this simple for teaching purposes)
    listen(integer channel, string name, key id, string message)
    {
        // Placeholder for a future expansion where owner can set the value
    }
}
