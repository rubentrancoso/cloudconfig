# Spring Cloudconfig Server Template (for Git)

A simple Config Server reference implementation
 
## How to build

 ```
 mvn clean resources:resources package docker:build -DskipTests
 ```

## How to run

```
#!/bin/bash
PROXY_USERNAME=<proxyuser>
PROXY_PASSWORD=<proxypass>
PROXY_HTTPS_SERVER=<proxyhost>
PROXY_HTTPS_PORT=8080
PROXY_DEFINES="-Dhttps.proxyHost=$PROXY_HTTPS_SERVER -Dhttps.proxyPort=$PROXY_HTTPS_PORT -Dhttp.proxyUser=$PROXY_USERNAME -Dhttp.proxyPassword=$PROXY_PASSWORD"
PROFILE=dev

docker stop cloudconfig; docker rm cloudconfig; docker run -d --net dev --name cloudconfig -p 8200:8080 --env JAVA_OPTS="$PROXY_DEFINES" --restart=always registry.acme.tld/repository/cloudconfig; docker logs -f cloudconfig
``` 

## VM Arguments

```
-Dhttps.proxyHost=<proxyserver>s -Dhttps.proxyPort=8080 -Dhttp.proxyUser=<username> -Dhttp.proxyPassword=<password>
```

## Acccessing configs

 http://localhost:8200/master/config-reader-dev.yml 
 
 http://localhost:8200/config-reader/dev/master

## TODO
 
fetch on change
