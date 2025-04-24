pipeline {
  agent any

  environment {
    AWS_REGION = "us-east-1"
    TF_VAR_aws_region = "${AWS_REGION}"
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch : 'ecs' , url: 'https://github.com/prafulitankar/GitOps.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }
    
    stage('Terraform Validate') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        //input message: 'Apply Terraform changes?', ok: 'Apply'
        sh 'terraform apply -auto-approve tfplan'
      }
    }
  }

  post {
    always {
      echo 'Pipeline complete.'
    }
  }
}
