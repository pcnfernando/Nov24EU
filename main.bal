import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service / on httpDefaultListener {
    resource function get hello() returns json|error {
        do {
            return "Hello from Choreo cloud !";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}
