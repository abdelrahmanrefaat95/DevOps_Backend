@Library('devops-library') _  // Load the shared library
pipeline {
      agent {
            label 'ubuntu-slave'  
        }

    stages {
        stage('Hello World') {
            steps {
                hello()
            }
        }

        stage('Check Versions') {
            steps {
               checkVersion()
            }
        }
        stage('Build APP'){
            steps{
                mvnInstall()
            }
        }
    }
}
