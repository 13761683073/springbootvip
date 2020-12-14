FROM java:8-jdk

WORKDIR /service

ADD target/springbootvip-*.jar ./springbootvip.jar

EXPOSE 8080

CMD java -jar springbootvip.jar
