# FROM openjdk:8
FROM hbstarjason/sw-base:6.1.0

ADD target/k8s.jar /opt/app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom  -javaagent:/usr/skywalking/agent/skywalking-agent.jar=agent.service_name=k8s-example”,"-jar","/opt/app.jar"]
