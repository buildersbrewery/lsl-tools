// ============================================================
// Beginner Example 02 — Simple Sensor
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llSensorRepeat
//   - sensor and no_sensor events
//   - Detecting agents (avatars) nearby
// ============================================================

default
{
    state_entry()
    {
        // Look for agents (avatars) within 10 meters, every 5 seconds
        // Parameters: name, key, type, range, arc, rate
        llSensorRepeat("", NULL_KEY, AGENT, 10.0, PI, 5.0);
        llSay(0, "Sensor started. I will report when I see someone.");
    }

    sensor(integer num_detected)
    {
        // At least one avatar was found
        llSay(0, "I see " + (string)num_detected + " avatar(s) nearby.");
        
        // Example of reading the first detected avatar
        key av = llDetectedKey(0);
        string name = llDetectedName(0);
        llSay(0, "Closest or first: " + name);
    }

    no_sensor()
    {
        // Nothing matching the sensor criteria was found this cycle
        // (Often left empty or used for "idle" behavior)
    }
}
