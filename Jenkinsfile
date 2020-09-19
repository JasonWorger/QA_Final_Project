pipeline {
    agent any
    stages {

        /* Begin Template
        stage('template'){
            steps{
                sh 'scripts'
            }
        }
        End template*/ 

        stage('Hardware - Terraform'){
            steps{
                //Call script here
                sh 'scripts/terraform.sh'
            }
        }

        stage('Software - Ansible'){
            steps{
                //Call script here
                sh 'scripts/ansible.sh'
            }
        }

        stage('Test software'){
            steps{
                //Call script here
                sh 'scripts/test_software.sh'
            }
        }

        stage('Dockerfy and artifact'){
            steps{
                //Call script here
                sh 'scripts/artifact.sh'
            }
        }

        stage('Deploy images'){
            steps{
                //Call script here
                sh 'scripts/deploy.sh'
            }
        }
    }
}