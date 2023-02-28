pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
 
  environment {
        CLOUDSDK_CORE_PROJECT='jenkins-server-project' 
    }
 
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', url: 'https://github.com/nehapatel345/jenkins'
            }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
      stage('terraform plan') {
            steps{
                sh 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps{
                sh 'terraform apply -auto-approve'
            }
        }
    }

    
}
