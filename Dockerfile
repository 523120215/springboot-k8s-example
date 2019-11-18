FROM openjdk:8

env JAVA_OPTS

ADD target/k8s.jar /opt/app.jar

# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom”,"-jar","/opt/app.jar"]
CMD ["bash", "-c", "java ${JAVA_OPTS} -jar /opt/app.jar -Djava.security.egd=file:/dev/./urandom"]
