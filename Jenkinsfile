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
                echo "Running as a cluster"
                dir('jenkins-assign7') {
                    // Bind your secret file credential to an environment variable
                    withCredentials([file(credentialsId: 'minikube-config', variable: 'KUBECONFIG_FILE')]) {
                        // Pass the variable securely to kubectl using single quotes to avoid Groovy interpolation
                        sh 'kubectl --kubeconfig=$KUBECONFIG_FILE apply -f k8s.yml'
                    }
                }
            }
        }
    }
}
