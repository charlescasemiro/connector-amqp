FROM tomcat:jre21-temurin-noble

COPY amqp-test/target/amqp-test.war /usr/local/tomcat/webapps/

RUN chmod 777 /app/root/
RUN mkdir -p /usr/local/tomcat/conf/Catalina/localhost
RUN chmod -R a+rwx /usr/local/tomcat/conf/Catalina

EXPOSE 8080

CMD ["catalina.sh", "run"]
