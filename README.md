# fae-message-broker
Kafka Message Broker for eventing integration of every microservice


## Usage
The project could be used in two different ways
1. in development mode
2. in production mode

### DEV
You can start the message broker by running the "start-service-dev.sh" this will start two docker containers.
One container is used for the "Zookeeper" and the other one is the message broker itself "Kafka".
You can connect to the message broker via localhost:9090 on your host system or via kafka:9092 in docker. 
If you want to connect a docker container to the message broker make sure both containers are in the same network "fae_backend".
This could be create with the following command:
```bash
docker network create fae_backend
```

### PROD
The production ENV will be deployed by our CI/CD-Server. Kafka is there running as a cluster.
Your service must be in the same network as the kafka-Server. The network should be "fae_backend".
Your service should be able to connect to all three instances of kafka: "kafka-1:9092", "kafka-2:9092" and "kafka-3:9092"