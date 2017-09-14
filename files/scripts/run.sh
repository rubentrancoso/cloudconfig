#!/bin/bash
PROXY_USERNAME=<proxyuser>
PROXY_PASSWORD=<proxypass>
PROXY_HTTPS_SERVER=<proxyhost>
PROXY_HTTPS_PORT=8080
PROXY_DEFINES="-Dhttps.proxyHost=$PROXY_HTTPS_SERVER -Dhttps.proxyPort=$PROXY_HTTPS_PORT -Dhttp.proxyUser=$PROXY_USERNAME -Dhttp.proxyPassword=$PROXY_PASSWORD"
PROFILE=dev


docker stop cloudconfig; docker rm cloudconfig; docker run -d --net dev --name cloudconfig -p 8200:8080 --env JAVA_OPTS="$PROXY_DEFINES" --restart=always registry.cmpn.paas.gsnetcloud.corp/chaosmonkey/cloudconfig; docker logs -f cloudconfig

