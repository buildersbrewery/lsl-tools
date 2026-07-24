// ============================================================
// Advanced Example 08 — Simple Particle System
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llParticleSystem basics
//   - Turning particles on and off
//   - A minimal readable parameter list
//
// Complementary practice material only.
// ============================================================

default
{
    state_entry()
    {
        llSay(0, "Touch to toggle a simple particle effect.");
    }

    touch_start(integer total_number)
    {
        // Toggle: if particles are running, stop them; otherwise start a simple burst style
        // For clarity we just start a gentle effect, then provide a way to clear.
        
        list params = [
            PSYS_PART_FLAGS,
                PSYS_PART_INTERP_COLOR_MASK | PSYS_PART_INTERP_SCALE_MASK | PSYS_PART_EMISSIVE_MASK,
            PSYS_SRC_PATTERN,
                PSYS_SRC_PATTERN_EXPLODE,
            PSYS_PART_START_COLOR, <1.0, 0.8, 0.2>,
            PSYS_PART_END_COLOR,   <1.0, 0.2, 0.0>,
            PSYS_PART_START_SCALE, <0.08, 0.08, 0.0>,
            PSYS_PART_END_SCALE,   <0.02, 0.02, 0.0>,
            PSYS_PART_START_ALPHA, 1.0,
            PSYS_PART_END_ALPHA,   0.0,
            PSYS_PART_MAX_AGE,     1.5,
            PSYS_SRC_BURST_RATE,   0.1,
            PSYS_SRC_BURST_PART_COUNT, 4,
            PSYS_SRC_BURST_RADIUS, 0.1,
            PSYS_SRC_BURST_SPEED_MIN, 0.1,
            PSYS_SRC_BURST_SPEED_MAX, 0.4,
            PSYS_SRC_MAX_AGE, 0.0
        ];
        
        llParticleSystem(params);
        llSay(0, "Particles started. Touch again in a moment or reset to clear.");
        
        // Simple auto-clear after a few seconds for teaching cleanliness
        llSetTimerEvent(4.0);
    }

    timer()
    {
        llSetTimerEvent(0.0);
        llParticleSystem([]);  // clear
        llSay(0, "Particles cleared.");
    }
}
