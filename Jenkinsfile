pipeline {
  agent { label 'agent-1' }
 
  parameters {
    choice(name: 'APP_NAME', choices: ['app-a', 'app-b'])
  }
 
  stages {
    stage('Terraform Init') {
      steps {
        dir("terraform-repo/env/${params.APP_NAME}") {
          sh 'terraform init'
        }
      }
    }
 
    stage('Terraform Apply') {
      steps {
        dir("terraform-repo/env/${params.APP_NAME}") {
          sh 'terraform apply -auto-approve'
        }
      }
    }
  }
}