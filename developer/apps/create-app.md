---

---
# Creating an App

All apps are docker images stored on your registry of choice.
The app-store just collects meta data, how to install them.

When building for the Sicon platform, depending on the capabilities you want to add, there are different levels of integration available.

## Types of Integration

* Service
* Server
* Client
* Adapter

### Service

This container provides services like OPCUA, MQTT or similar. In the case, you want to expose the data for use in another protocol, or provide the data to cloud providers.

Containers can open ports, as long as they are not used by other services already.

### Server

Can provide a webserver on port `80` to show a website for e.g. custom visualization.
Our reverse proxy picks the app up and serves it with `/server/` and your [docker namespace](#docker-namespace).
For example: `https://siconos.local/server/sicon/view`

Additionally, your web view will be embedded as iframe with our navigation around on this address:

Example: `https://siconos.local/apps/sicon/view`

#### Limitations

Iframes are limited in its capability to route to other pages or its own subpages. If you are providing subpages, a page refresh will lead you to the homepage again.
Also, from within the iframe, you are not able to e.g. link to a system page or other app, unless you use another iframe.

#### Query Parameters

There are a few query parameters to control the behavior of the layout and or communicate with the iframe.
This can be used embed your dashboard

* `?frameless` - hide the layout
* `?path` - path to webserver in iframe, for e.g. initial load

### Client - Work in Progress

A client-app is a tightly integrated front-end application that has access to the in-built components and API functions. There is no need to write extra wrappers.

E.g. `https://siconstratos.local/apps/gps/view`

::: tip Work in Progress
This integration mode is not available yet. We will update the documentation, once this is ready for developers.
:::

### Adapter

An adapter is like a service, so it can consume, process and publish device data. Additionally, an adapter can register different main devices to the main device catalog. 

## Build and Deployment

Your app has to be deployed to a docker registry of your choice.

### Docker Namespace

Your docker image should be named with the following convention:

`<registry>/<vendor>/<app-name>`

Example: `myregistry.azurecr.com/gps/view`

Throughout the App-Store, `vendor` and `app-name` has to be unique.
This will be checked when [registering the app in the app-store](./publish-app.md).

### Default Run Settings

When your app is created and registered through the sicon platform, these environment variables and networks are automatically applied to the container.

``` json
{
    "NetworkingConfig": {
        "EndpointsConfig": {
            "docker_sicon-network": {}
        }
    },
    "Env": [
        "APIBASEURL=https://sicon_backend/api/v1",
        "MQTTHOST=sicon_mqtt",
    ]
}
```

You can [change these settings](./publish-app#app-json-schema) to be extended or replaced if needed, when editing the app in the app-store.
Within the sicon-network, you have access to a bridged network wherein the APIs are available from.

While developing locally on e.g. a laptop, it is recommended to always use these environment variables for connecting to Sicon OS APIs within the same network.
**Example with a docker-compose file:**

``` yaml
version: '3'

services:
  client:
    container_name: testapp
    restart: always
    image: your-registry.azure.io/somecompany/testapp
    environment:
      APIBASEURL: https://siconos.local/api/v1
      MQTTHOST: siconos.local
```