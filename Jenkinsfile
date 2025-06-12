pipeline{
    agent any

    stages{
        stage('installation check'){
            steps{
                sh 'terraform -version'
            }
        }
        stage('initialization'){
            steps{
                sh 'terraform init'
            }
            
        }
        stage('validation'){
            steps{
                sh 'terraform validate'
            }
        }
        stage('terraform plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
    post {
        always{
            emailext body: '''Hi,

     The jenkins has been failed . please check it.

     Thanks
     Devops Team''', subject: 'testing jenkins pipeline: $JOB_URL', to: 'malleshdevops2021@outlook.com'
        }
    }
}
