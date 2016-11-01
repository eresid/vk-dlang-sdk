module main;

import std.stdio;
import std.experimental.logger;

immutable int APP_ID = 123456;
immutable string CLIENT_SECRET = "CLIENT_SECRET";
immutable string REDIRECT_URI = "REDIRECT_URI";
immutable string CODE = "CODE";

void main()
{
	import com.vk.api.sdk.client.VkApiClient;
	import com.vk.api.sdk.client.actors.UserActor;
	import com.vk.api.sdk.client.TransportClient;
	import com.vk.api.sdk.exceptions.ApiException;
	import com.vk.api.sdk.exceptions.ClientException;
	import com.vk.api.sdk.httpclient.HttpTransportClient;
	import com.vk.api.sdk.objects.AuthResponse;
	
	TransportClient client = HttpTransportClient.getInstance;
	VkApiClient vk = new VkApiClient(client);
	
	try {
	AuthResponse authResponse = vk.oauth()
		.userAuthorizationCodeFlow(APP_ID, CLIENT_SECRET, REDIRECT_URI, CODE)
		.execute();
		
		writeln("access_token: ", authResponse.accessToken);
		writeln("user_id: ", authResponse.userId);
		writeln("expires_in: ", authResponse.expiresIn);
		writeln("error: ", authResponse.error);
		
		UserActor actor = new UserActor(authResponse.userId, authResponse.accessToken);
	} catch (ApiException e1) {
		log(e1.msg);
	} catch (ClientException e2) {
		log(e2.msg);
	}
}
