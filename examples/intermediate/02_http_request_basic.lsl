// ============================================================
// Intermediate Example 02 — Basic HTTP Request
// Builders Brewery LSL Tools
//
// What you will learn:
//   - llHTTPRequest
//   - http_response event
//   - Simple error checking
//
// Note: This example uses a public test endpoint. In real work
// you would use your own server or a service you control.
// ============================================================

key gRequestID;

default
{
    touch_start(integer total_number)
    {
        // Simple GET request
        gRequestID = llHTTPRequest(
            "https://httpbin.org/get",
            [HTTP_METHOD, "GET"],
            ""
        );
        
        llOwnerSay("HTTP request sent...");
    }

    http_response(key request_id, integer status, list metadata, string body)
    {
        if (request_id != gRequestID) return;
        
        llOwnerSay("Status: " + (string)status);
        
        if (status == 200)
        {
            // Success — body contains the response
            // For brevity we only show the first part
            llOwnerSay("Body (first 200 chars): " + llGetSubString(body, 0, 199));
        }
        else
        {
            llOwnerSay("Request failed or returned non-200 status.");
        }
    }
}
