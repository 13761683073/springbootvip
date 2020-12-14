FROM java:8-jdk

WORKDIR /service

ADD target/aim-service-*.jar ./aim-service.jar

EXPOSE 8080

CMD java -jar -Dspring.profiles.active=${ENV} ${JAVA_OPTS} aim-service.jar
