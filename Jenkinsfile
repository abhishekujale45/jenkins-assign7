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
        stage('Compile the code') {
            steps {
                echo 'Compiling the code'
                // Use dir() so Jenkins runs the commands inside the cloned folder
                dir('jenkins-assign7') {
                    sh 'javac Main.java'
                }
            }
        }
        stage('Running the code') {
            steps {
                echo 'Output of the code is'
                dir('jenkins-assign7') {
                    sh 'java Main'
                }
            }
        }
    }
}
