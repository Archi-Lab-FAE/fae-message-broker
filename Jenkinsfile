node {
    def server = 'tcp://10.10.10.61:2376'
    def certs = 'fae-ws2019-certs'
    def projectName = 'fae-message-broker'

    stage('Checkout') {
        checkout scm
    }

    stage('Deploy') {
        docker.withServer(server, certs) {
            sh "docker stack deploy -c ./docker-compose.yml ${projectName}"
        }
    }
}
