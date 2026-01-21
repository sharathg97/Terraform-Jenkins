pipeline {
    agent any

    stages {
        stage('clone project') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/sharathg97/Terraform-Jenkins.git'
            }
        }

        stage('clean') {
            steps {
                dir('Amazon') {
                    sh 'mvn clean'
                }
            }
        }
