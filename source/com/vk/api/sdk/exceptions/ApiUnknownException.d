module com.vk.api.sdk.exceptions.ApiUnknownException;

import com.vk.api.sdk.exceptions.ApiException;

class ApiUnknownException : ApiException {
    
    this(string message) {
        super(1, "Unknown error occurred", message);
    }
}
