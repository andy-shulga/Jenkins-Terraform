pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    stage('Plan') {
    steps {
        script {
            sh 'cd terraform/ && terraform init && terraform plan -out tfplan'
        }
    }
}

  }
