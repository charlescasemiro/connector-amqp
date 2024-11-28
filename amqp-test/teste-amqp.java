import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.Message;
import javax.jms.MessageProducer;
import javax.jms.Session;
import org.apache.activemq.ActiveMQConnectionFactory;

public class AMQPSampleApp {

    public static void main(String[] args) throws JMSException {
        String brokerUrl = "http://ex-aao-amqp-0-svc-rte-infra.apps-crc.testing"; // Update with your AMQ broker URL
        String queueName = "DLQ";

        // Create a connection factory
        ConnectionFactory connectionFactory = new JmsConnectionFactory(brokerUrl);

        // Create a connection
        Connection connection = connectionFactory.createConnection();
        connection.start();

        // Create a session
        Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);

        // Create a destination (queue)
        Destination destination = session.createQueue(queueName);

        // Create a producer
        MessageProducer producer = session.createProducer(destination);

        // Create a message
        TextMessage message = session.createTextMessage("Hello, Red Hat AMQ using AMQP!");

        // Send the message
        producer.send(message);
        System.out.println("Sent message: " + message.getText());

        // Create a consumer
        MessageConsumer consumer = session.createConsumer(destination);

        // Receive the message
        Message receivedMessage = consumer.receive();
        if (receivedMessage instanceof TextMessage) {
            TextMessage textMessage = (TextMessage) receivedMessage;
            System.out.println("Received message: " + textMessage.getText());
        }

        // Clean up
        session.close();
        connection.close();
    }
}