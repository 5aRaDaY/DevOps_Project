pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/5aRaDaY/DevOps_Project.git'
            }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
		stage ('az login') {
            steps {
               withCredentials([azureServicePrincipal('d610034d-7ddd-41b8-89b1-35e7ca155f60')]) {
					sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
				}
            }
        }  
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        stage ('run grafana') {
            steps {
                sh 'docker run -d -p 3000:3000 --name grafana grafana/grafana-oss:latest'
            }
        }
    }
}
