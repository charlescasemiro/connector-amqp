FROM tomcat:jre21-temurin-noble

COPY amqp-test/target/amqp-test.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
