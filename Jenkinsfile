pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION    = credentials('AWS_DEFAULT_REGION')

    }
    stages {
        stage('AWS CLI') {
            steps {
                script {
                    sh 'aws --version'
                }
            }
        }
        stage('Plan') {
            steps {
                script {
                    sh 'aws ec2 run-instances \
                        --image-id ami-0c7217cdde317cfec \
                        --instance-type t2.micro \
                        --subnet-id subnet-0aab1365689b201dd \
                        --security-group-ids sg-0c65867ee92463f3b \
                        --iam-instance-profile Arn=arn:aws:iam::724183212105:instance-profile/SSM \
                        --count 1'
                }
            }
        }
    }
}
