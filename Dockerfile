FROM tomcat:jre21-temurin-noble

WORKDIR /app/root

COPY amqp-test/target/amqp-test.war /usr/local/tomcat/webapps/

RUN chmod 777 /app/root/
RUN mkdir -p /usr/local/tomcat/conf/Catalina/localhost
RUN chmod -R a+rwx /usr/local/tomcat/conf/Catalina

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
