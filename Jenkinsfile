pipeline {
    agent any
    stages {
        stage('Build & Push to ECR') {
            steps {
                    script{
                        docker.withRegistry('https://328006718464.dkr.ecr.us-west-2.amazonaws.com', 'ecr:us-west-2:aws-cred') {
                            def app = docker.build("frontend", "-f frontend/Dockerfile ./frontend")
                            app.push("${env.BUILD_NUMBER}")
                            app.push("latest")
                            app = docker.build("backend", "-f backend/Dockerfile ./backend")
                            app.push("${env.BUILD_NUMBER}")
                            app.push("latest")
                        }
                    }
                }
            }
        }
    }
