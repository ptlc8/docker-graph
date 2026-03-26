pipeline {
    agent any

    parameters {
        string(name: 'PORT', defaultValue: params.PORT, description: 'Port to serve the graph visualization (optional, defaults to 6498)')
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker compose build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker compose up -d --remove-orphans'
            }
        }
    }
}
