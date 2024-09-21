pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from Git repository
                git 'https://github.com/your-username/your-node-app-repo.git'
            }
        }
        
        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }
        
        stage('Run Tests') {
            steps {
                // Run any tests (optional, can be customized)
                sh 'npm test'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build Docker image (optional if using Docker)
                sh 'docker build -t your-image-name .'
            }
        }

        stage('Deploy') {
            steps {
                // Run the app in Docker (or use any other deploy method)
                sh 'docker run -d -p 3000:3000 your-image-name'
            }
        }
    }

    post {
        always {
            // Clean up workspace after the build
            cleanWs()
        }
    }
}
