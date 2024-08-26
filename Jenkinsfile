pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/akulkarni63/color.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def customImage = docker.build("dockerproj")
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.image('dockerproj').run('-p 8081:8081 --name dockerproj')
                }
            }
        }
    }
}
