pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Compiling Java code...'
                sh 'javac src/Main.java'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t my-java-app .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Running Docker container...'
                sh 'docker run my-java-app'
            }
        }
    }
}
