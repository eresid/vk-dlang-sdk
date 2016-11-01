module com.vk.api.sdk.actions.OAuth;

import com.vk.api.sdk.client.AbstractAction;
import com.vk.api.sdk.client.VkApiClient;
import com.vk.api.sdk.queries.oauth.OAuthServerClientCredentialsFlowQuery;
import com.vk.api.sdk.queries.oauth.OAuthUserAuthorizationCodeFlowQuery;

class OAuth : AbstractAction {
	
	private immutable string OAUTH_ENDPOINT = "https://oauth.vk.com/";

	/**
	 * Constructor
	 *
	 * @param client vk api client
	 */
	this(VkApiClient client) {
		super(client);
	}

	OAuthUserAuthorizationCodeFlowQuery userAuthorizationCodeFlow(int clientId, string clientSecret, string redirectUri, string code) {
		return new OAuthUserAuthorizationCodeFlowQuery(getClient(), OAUTH_ENDPOINT, clientId, clientSecret, redirectUri, code);
	}

	OAuthServerClientCredentialsFlowQuery serverClientCredentionalsFlow(int clientId, string clientSecret) {
		return new OAuthServerClientCredentialsFlowQuery(getClient(), OAUTH_ENDPOINT, clientId, clientSecret);
	}
}
