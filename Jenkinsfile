node {
    stage('Checkout') {
        checkout scm
    }

	// TODO Change server and server creds to the fae server.
    /*stage('Deploy') {
        docker.withServer('tcp://10.10.10.51:2376', 'coalbase-prod-certs') {
            sh 'docker stack deploy -c ./docker-compose.yml coalbase-message-broker'
        }
    }*/
}
