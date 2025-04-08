//ci cd 
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Compiling Java code.........'
                bat 'javac src\\Main.java'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t my-java-app .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Running Docker container...'
                bat 'docker run my-java-app'
            }
        }
    }
}
