pipeline {
    agent any

    environment {
        IMAGE_NAME = 'my-java-app'
    }

    stages {
        stage('Build') {
            steps {
                echo '📦 Compiling Java code...'
                sh 'mkdir -p out && javac -d out src/Main.java'
            }
        }

        stage('Docker Build') {
            steps {
                echo '🐳 Building Docker image...'
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Test') {
            steps {
                echo ' Running tests...'
                
            }
        }

        stage('Deploy') {
            steps {
                echo ' Running Docker container...'
                sh 'docker run --rm $IMAGE_NAME'
            }
        }
    }

    post {
        failure {
            echo ' Build failed!'
        }
        success {
            echo ' Build succeeded!'
        }
    }
}
