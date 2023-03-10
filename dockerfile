FROM openjdk:17-jdk-slim
VOLUME /tmp 
COPY UnlimitedJCEPolicyJDK8/* /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/ 
COPY target/photo-app-api-config-server-0.0.1-SNAPSHOT.jar ConfigServer.jar 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","ConfigServer.jar"] 