FROM tomcat:jre21-temurin-noble

WORKDIR /app/root

COPY amqp-test/target/amqp-test.war /usr/local/tomcat/webapps/

RUN chmod 777 /app/root/

EXPOSE 8080

CMD ["catalina.sh", "run"]
