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
            //environment { 
                   
            //}
            steps {
                script {
                    sh 'export PATH=/usr/local/go/bin/go:$PATH && go version'
                    sh 'env'
                    sh 'ls /usr/local/go/bin/go'
                    //sh 'go version'
                }
            }
        }
        stage('Clean') {
            steps {
                sh 'rm -rf ./*'
            }
            
            post {
                success {
                    echo 'Clean successfully'
                }
            }
        }
    }
}
