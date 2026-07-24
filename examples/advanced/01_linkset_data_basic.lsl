// ============================================================
// Advanced Example 01 — Basic Linkset Data
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llLinksetDataWrite / llLinksetDataRead
//   - linkset_data event
//   - Using the linkset as a simple persistent key-value store
//
// Requirements:
//   - Modern Second Life server that supports Linkset Data
// ============================================================

default
{
    state_entry()
    {
        // Write a value that will persist with the object
        // (survives script reset, and can be read by other scripts in the linkset)
        integer result = llLinksetDataWrite("my_key", "Hello from Linkset Data");
        
        if (result == LINKSETDATA_OK)
        {
            llOwnerSay("Write succeeded.");
        }
        else
        {
            llOwnerSay("Write failed with code: " + (string)result);
        }
        
        // Read it back
        string value = llLinksetDataRead("my_key");
        llOwnerSay("Read value: " + value);
    }

    linkset_data(integer action, string name, string value)
    {
        // This event fires when linkset data changes
        // action will be one of the LINKSETDATA_* constants
        llOwnerSay("Linkset data event — action: " + (string)action 
            + " name: " + name + " value: " + value);
    }
}
