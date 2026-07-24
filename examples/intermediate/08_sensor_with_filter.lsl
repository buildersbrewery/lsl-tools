// ============================================================
// Intermediate Example 08 — Sensor with Practical Filtering
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llSensor / llSensorRepeat with type filters
//   - Reading detected information safely
//   - A clean pattern for “nearest avatar” style logic
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        // Look for agents only, 15 m range, full circle, every 8 seconds
        llSensorRepeat("", NULL_KEY, AGENT, 15.0, PI, 8.0);
        llOwnerSay("Sensor started (agents within 15 m).");
    }

    sensor(integer num_detected)
    {
        // Simple approach: work with the first detected agent
        key    id   = llDetectedKey(0);
        string name = llDetectedName(0);
        vector pos  = llDetectedPos(0);
        
        float distance = llVecDist(llGetPos(), pos);
        
        llOwnerSay("Detected: " + name 
            + " — distance: " + (string)llRound(distance) + " m");
        
        // Example of a gentle reaction
        if (distance < 5.0)
        {
            llSay(0, "Hello, " + name + ". You are close.");
        }
    }

    no_sensor()
    {
        // Optional: quiet when nothing is around
        // llOwnerSay("No agents in range.");
    }

    touch_start(integer total_number)
    {
        // Toggle-style reset for teaching purposes
        llSensorRemove();
        llOwnerSay("Sensor stopped. Reset the script to start again.");
    }
}
