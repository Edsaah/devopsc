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
                script {
//                     docker.WithRegistry(
//                     'https://328006718464.dkr.ecrlight-feather-code-challenge.us-west-2.amazonaws.com'.
//                     'ecr:light-feather-code-challenge:JENKINS-USER-KEYS') {
//                     def myImage = docker.build('ecr:light-feather-code-challenge')
//                     myImage.push('latest')
                }
            }
        }
    }
}
