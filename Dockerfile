# FROM openjdk:8
FROM hbstarjason/sw-base:6.1.0

ADD target/k8s.jar /opt/app.jar

ENTRYPOINT ["java","-javaagent:/usr/skywalking/agent/skywalking-agent.jar -Djava.security.egd=file:/dev/./urandom”,"-jar","/opt/app.jar"]
