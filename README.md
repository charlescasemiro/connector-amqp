# connector-amqp

A Java-based AMQP connector designed for seamless integration with message brokers like RabbitMQ. This project facilitates message publishing and consumption using the Advanced Message Queuing Protocol (AMQP).

## Features

* **AMQP Integration**: Enables communication with AMQP-compatible message brokers.
* **Docker Support**: Includes a `Dockerfile` for containerized deployment.
* **Tekton Pipelines**: Contains Tekton pipeline definitions for CI/CD automation.

## Prerequisites

* Java Development Kit (JDK) 8 or higher
* Docker (for containerization)
* An AMQP-compatible message broker (e.g., RabbitMQ)

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/charlescasemiro/connector-amqp.git
cd connector-amqp
```

### Build the Project

Use Maven to build the project:

```bash
mvn clean install
```

### Run the Application

After building, you can run the application using:

```bash
java -jar target/connector-amqp.jar
```

### Docker Deployment

To build and run the Docker container:

```bash
docker build -t connector-amqp .
docker run -d connector-amqp
```

## Configuration

Configuration details such as AMQP broker URL, queue names, and credentials should be specified in the application's properties file or passed as environment variables. Ensure that these configurations align with your AMQP broker settings.

## Tekton Pipelines

The `.tekton` directory contains Tekton pipeline definitions for automating build and deployment processes. To utilize these pipelines:

1. Install Tekton Pipelines in your Kubernetes cluster.
2. Apply the pipeline definitions:

```bash
kubectl apply -f .tekton/
```

3. Trigger the pipeline runs as per your CI/CD workflow.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your enhancements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
