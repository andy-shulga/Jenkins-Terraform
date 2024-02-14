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
                    sh 'apt install awscli \
                        --aws --version'
                }
            }
        }
        stage('Plan') {
            steps {
                script {
                    sh 'aws ec2 run-instances \
                        --image-id ami-0ce2cb35386fc22e9 \
                        --instance-type t2.micro \
                        --subnet-id subnet-06c05d33b112199c1 \
                        --security-group-ids sg-015a208da56706304 \
                        --iam-instance-profile Arn=arn:aws:iam::724183212105:instance-profile/SSM \
                        --count 1'
                }
            }
        }
    }
}
