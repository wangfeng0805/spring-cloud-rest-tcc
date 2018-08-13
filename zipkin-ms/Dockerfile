FROM pronter/jce-java
MAINTAINER Wangf

VOLUME /tmp
COPY ./target/zipkin-ms-0.0.1-SNAPSHOT.jar /app.jar
ENTRYPOINT [ "java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "/app.jar" ]

EXPOSE 9411