module com.vk.api.sdk.queries.oauth.OAuthUserAuthorizationCodeFlowQuery;

import com.vk.api.sdk.client.AbstractQueryBuilder;
import com.vk.api.sdk.client.VkApiClient;
import com.vk.api.sdk.objects.AuthResponse;

class OAuthUserAuthorizationCodeFlowQuery : AbstractQueryBuilder!(OAuthUserAuthorizationCodeFlowQuery, AuthResponse) {

    this(VkApiClient client, string endpoint, int clientId, string clientSecret, string redirectUri, string code) {
        super(client, endpoint, "access_token");
        
        //clientId(clientId);
        //clientSecret(clientSecret);
        //redirectUri(redirectUri);
        //code(code);
    }

    OAuthUserAuthorizationCodeFlowQuery clientId(int value) {
        return unsafeParam("client_id", value);
    }

    OAuthUserAuthorizationCodeFlowQuery clientSecret(string value) {
        return unsafeParam("client_secret", value);
    }

    OAuthUserAuthorizationCodeFlowQuery redirectUri(string value) {
        return unsafeParam("redirect_uri", value);
    }

    OAuthUserAuthorizationCodeFlowQuery code(string value) {
        return unsafeParam("code", value);
    }

    override protected OAuthUserAuthorizationCodeFlowQuery getThis() {
        return this;
    }

    override protected string[] essentialKeys() {
        return ["client_id", "client_secret", "redirect_uri", "code"];
    }
}
