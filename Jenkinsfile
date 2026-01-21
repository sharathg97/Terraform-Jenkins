pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/sharathg97/Terraform-Jenkins.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
