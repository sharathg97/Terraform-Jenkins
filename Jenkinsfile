pipeline {
    agent any
    environment {
    ARM_CLIENT_ID       = credentials('AZ_CLIENT_ID')
    ARM_CLIENT_SECRET   = credentials('AZ_CLIENT_SECRET')
    ARM_TENANT_ID       = credentials('AZ_TENANT_ID')
    ARM_SUBSCRIPTION_ID = credentials('AZ_SUBSCRIPTION_ID')
  }
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
