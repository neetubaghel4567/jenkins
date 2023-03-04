pipeline {
    agent any

    environment{
        CLOUDSDK_CORE_PROJECT = 'jenkins-server-project'
    }

    stages{

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/neetubaghel4567/jenkins.git'
            }
        }

        stage('gcp_authentication'){
            steps{
                sh 'gcloud auth activate-service-account --key-file $GOOGLE_APPLICATION_CREDENTIALS'
            }
        }
        stage('Terraform Init') {
            steps {
              sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
                // sh 'terraform plan -var app_name=${TF_VAR_app_name} -var env=${TF_VAR_env} -out=tfplan'
            }
          
        }
//         stage('Approve') {
//       steps {
//         // Prompt the user to approve the changes
//         input message: 'Are you sure you want to apply these changes?', ok: 'Approve'
//       }
//     }
         stage('Terraform Apply') {
      steps {
        sh 'terraform apply'
        // sh 'terraform apply -auto-approve tfplan'
      }
    }


    }
}
