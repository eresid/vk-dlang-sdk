module com.vk.api.sdk.queries.oauth.OAuthServerClientCredentialsFlowQuery;;

import com.vk.api.sdk.client.AbstractQueryBuilder;
import com.vk.api.sdk.client.VkApiClient;
import com.vk.api.sdk.objects.ClientCredentialsFlowResponse;

class OAuthServerClientCredentialsFlowQuery : AbstractQueryBuilder!(OAuthServerClientCredentialsFlowQuery, ClientCredentialsFlowResponse) {

    this(VkApiClient client, string endpoint, int clientId, string clientSecret) {
        super(client, endpoint, "access_token");
        
        //clientId(clientId);
        //clientSecret(clientSecret);
        //grantType("client_credentials");
    }

    OAuthServerClientCredentialsFlowQuery clientId(int value) {
        return unsafeParam("client_id", value);
    }

    OAuthServerClientCredentialsFlowQuery clientSecret(string value) {
        return unsafeParam("client_secret", value);
    }

    OAuthServerClientCredentialsFlowQuery grantType(string value) {
        return unsafeParam("grant_type", value);
    }

    override protected OAuthServerClientCredentialsFlowQuery getThis() {
        return this;
    }

    override protected string[] essentialKeys() {
        return ["client_id", "client_secret"];
    }
}
