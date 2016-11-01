module com.vk.api.sdk.client.TransportClient;

import std.stdio;

import com.vk.api.sdk.client.ClientResponse;

interface TransportClient {

    ClientResponse post(string url, string requestBody);

    ClientResponse post(string url, string fileName, File file);

    ClientResponse post(string url);

    ClientResponse get(string url);
}
