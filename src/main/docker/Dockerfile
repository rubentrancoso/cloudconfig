############################################
# mvn clean install docker:build -DskipTests
############################################
FROM frolvlad/alpine-oraclejdk8:slim

ADD cloudconfig-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENV PROFILE=prod
EXPOSE 8080

################################## 
# para inspecionar esse container, 
# comente a linha ENTRYPOINT
# e rode 
# docker run -it registry.cmpn.paas.gsnetcloud.corp/chaosmonkey/cloudconfig:latest /bin/sh
#################################

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Dspring.profiles.active=$PROFILE -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]