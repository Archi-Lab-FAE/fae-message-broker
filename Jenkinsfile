node {
    stage('Checkout') {
        checkout scm
    }

	
    stage('Deploy') {
        docker.withServer('tcp://10.10.10.61:2376', 'fae-ws2019-certs') {
            sh 'docker stack deploy -c ./docker-compose.yml coalbase-message-broker'
        }
    }
}
