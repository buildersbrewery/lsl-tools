// ============================================================
// Advanced Example 03 — JSON + List Patterns
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llList2Json / llJson2List style conversion patterns
//   - Safe extraction of values
//   - Common pitfalls with nested data
//
// Note: Prefer the modern JSON functions available in current
// LSL. Always validate types before using extracted values.
// ============================================================

default
{
    state_entry()
    {
        // Build a simple list that we will convert
        list data = [
            "name", "Demo Object",
            "version", 3,
            "enabled", TRUE,
            "tags", "alpha,beta,test"
        ];
        
        string json = llList2Json(JSON_OBJECT, data);
        llOwnerSay("JSON: " + json);
        
        // Read values back safely
        string name = llJsonGetValue(json, ["name"]);
        string version = llJsonGetValue(json, ["version"]);
        string enabled = llJsonGetValue(json, ["enabled"]);
        
        llOwnerSay("name = " + name);
        llOwnerSay("version = " + version);
        llOwnerSay("enabled = " + enabled);
        
        // Example of checking type before use
        string type = llJsonValueType(json, ["version"]);
        if (type == JSON_NUMBER)
        {
            integer ver = (integer)version;
            llOwnerSay("Version as integer: " + (string)ver);
        }
    }
}
