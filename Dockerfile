FROM openjdk:8

ADD target/k8s.jar /opt/app.jar

# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom”,"-jar","/opt/app.jar"]
CMD ["bash", "-c", "java -jar /opt/app.jar -Djava.security.egd=file:/dev/./urandom"]
