pipeline {
    agent any
 
    stages {
        stage('Git') {
            steps {
                script {
                    // Get some code from a Gitlab
                    git branch: 'main', url: 'https://github.com/HarveyTangg/test.git'
                }
            }
        } 
        
        stage('Build') {
            environment { 
                   
            }
            steps {
                script {
                    sh 'env'
                    sh 'go version'
                }
            }
        }
    }
}
