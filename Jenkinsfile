pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build docker build ./frontend -t frontend:latest'
                sh 'docker build docker build ./backend -t backend:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh 'ls -al'
            }
        }
    }
}
