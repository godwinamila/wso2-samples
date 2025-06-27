import ballerina/http;
import ballerina/log;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /hello on httpDefaultListener {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
            log:printInfo("Hello World 11111");
            json var1 = check postmanClient->post("", {});

        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
