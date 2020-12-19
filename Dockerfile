FROM jdk:8-jdk
ARG JAR_FILE
COPY target/${JAR_FILE} app.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","/app.jar"]