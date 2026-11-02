pipeline {
    agent any
    stages {
        stage('Clone the code') {
            steps {
                echo 'Cloning the code'
                sh "rm -rf jenkins-assign7"
                sh 'git clone https://github.com/abhishekujale45/jenkins-assign7.git'
            }
        }
        stage('building the image') {
            steps {
                echo "building the image"
                dir('jenkins-assign7'){
                    sh 'docker build -t java-hello:latest .'
                }
            }
        }
	stage("Push to Docker Hub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag java-hello:latest ${env.dockerHubUser}/java-hello:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/java-hello:latest"
                }
            }
        }
        stage("Run as a container") {
            steps {
                echo "Running as a container"
                // Stop and remove the container if it already exists from a previous pipeline build
                sh 'docker rm -f java-hello-container || true'
                sh "docker run --name java-hello-container java-hello:latest"
            }
        }
    }
}
