pipeline {
    agent any
    stages {
        stage('Clone the code') {
            steps {
                echo 'Cloning the code'
                // Clean the directory if it exists, or let Jenkins handle checkout automatically
                sh 'git clone https://github.com/abhishekujale45/jenkins-assign7'
            }
        }
	stage('building the image') {
		steps {
			echo "building the image"
			sh 'docker build -t java-hello:latest .'
		}
	}
	
	stage("Run as a container")	{
		steps {
			echo "Running as a container"
			sh "docker run --name java-hello-container java-hello:latest"
		}
	}
        
    }
}
