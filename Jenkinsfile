pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Replace with your repository URL and credentials
                git branch: 'main', url: 'https://github.com/Wilsonbolledula/eclipse-java.git', credentialsId: 'wilsonbolledula/******'
            }
        }

        stage('Build') {
            steps {
                script {
                    // Assuming you have Java installed and set in the PATH
                    bat 'javac -d bin src/*.java'  // Compile Java files
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    // Create a JAR file from compiled classes
                    bat 'jar cvf MyApp.jar -C bin .'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image, replacing "my-java-app" with your preferred image name
                    bat 'docker build --no-cache -t my-java-app .'
                }
            }
        }
    }
}
