@Library('devops-library') _  // Load the shared library
pipeline {
      agent {
            label 'ubuntu-slave'  
        }

    stages {
        stage('Hello World') {
            steps {
                echo 'Hello World'
            }
        }

        stage('Check Versions') {
            steps {
                echo 'Checking Java version...'
                sh 'java -version || echo "Java not found"'

                echo 'Checking Maven version...'
                sh 'mvn -v || echo "Maven not found"'

                echo 'Checking Node.js version...'
                sh 'node -v || echo "Node.js not found"'

                echo 'Checking npm version...'
                sh 'npm -v || echo "npm not found"'
            }
        }
        stage('Start APP'){
            steps{
                mvnStart()
            }
        }
    }
}
