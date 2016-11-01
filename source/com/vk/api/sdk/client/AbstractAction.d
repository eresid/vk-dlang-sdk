module com.vk.api.sdk.client.AbstractAction;

import com.vk.api.sdk.client.VkApiClient;

abstract class AbstractAction {

    private VkApiClient vkApiClient;

    this(VkApiClient vkApiClient) {
        this.vkApiClient = vkApiClient;
    }

    protected VkApiClient getClient() {
        return vkApiClient;
    }
}
