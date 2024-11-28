FROM tomcat:jre21-temurin-noble

WORKDIR /app/root

COPY amqp-test/target/amqp-test.war /app/root/

RUN chmod 777 /app/root/

EXPOSE 8080

CMD ["catalina.sh", "run"]
