#### **Pre Requisite**
-  you have to install [docker](https://docs.docker.com/get-docker/ "docker")

#### Run Project
`$ docker compose up`

### There are 2 Containers
1. **springboot-container** - that exist spring boot application image.
2. **postgre-container** - that exist postgresql image.

### let's check the containers
`$ docker ps`
```agsl
CONTAINER ID   IMAGE                 COMMAND                  CREATED          STATUS          PORTS                                            NAMES
a05e306d29fe   spring-postgre:v1.0   "java -jar app.jar"      53 minutes ago   Up 53 minutes   0.0.0.0:8080->8080/tcp                           springboot-container
e1a6c191fbc8   postgres              "docker-entrypoint.s…"   53 minutes ago   Up 53 minutes   0.0.0.0:5432->5432/tcp                           postgre-container
```

network has renamed as `spring-postgres-network`
### we can see 2 containers are in same network
`$ docker network inspect spring-postgres-network`
```
C:\Users\supun>docker network inspect 950
[
    {
        "Name": "spring-postgres-network",
        "Id": "9507fc3be57a502afda2156f56bda5b194ebd48b1ecd9d9dda6fa63e73388caf",
        "Created": "2023-04-16T03:08:02.8856546Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.25.0.0/16",
                    "Gateway": "172.25.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "a05e306d29fe61fa22a2e6fd63ce1e8505154f072d765ad4fa8a581f48a307a8": {
                "Name": "springboot-container",
                "EndpointID": "cbe878dca99edf0267c5507ff8adfbefab0f9a70f7e804ff10b212d7b63c67bc",
                "MacAddress": "02:42:ac:19:00:03",
                "IPv4Address": "172.25.0.3/16",
                "IPv6Address": ""
            },
            "e1a6c191fbc8ceefb47a69bdd9db96f22bf142b90114e6dd0fad65f50c75aec1": {
                "Name": "postgre-container",
                "EndpointID": "379d3d310936f6ccf1bf5e70d0ec6da6df044e60723b165fba4b266313fbaea8",
                "MacAddress": "02:42:ac:19:00:02",
                "IPv4Address": "172.25.0.2/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {
            "com.docker.compose.network": "spring-postgres-network",
            "com.docker.compose.project": "spring-postgres-docker",
            "com.docker.compose.version": "2.17.2"
        }
    }
]
```
