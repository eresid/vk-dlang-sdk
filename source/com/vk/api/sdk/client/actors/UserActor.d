module com.vk.api.sdk.client.actors.UserActor;

import com.vk.api.sdk.client.actors.Actor;

class UserActor : Actor {

    private int userId;
    private string accessToken;

    this(int userId, string accessToken) {
        this.accessToken = accessToken;
        this.userId = userId;
    }

    override string getAccessToken() {
        return accessToken;
    }

    override int getId() {
        return userId;
    }
}
