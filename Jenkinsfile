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
                    PATH= sh (returnStdout: true, script: 'echo /opt/apache-maven-3.9.0/bin:$PATH').trim()
            }
            steps {
                script {
                    //sh 'export PATH=/opt/apache-maven-3.9.0/bin:$PATH'
                    sh 'env'
                    sh 'echo $PATH'
                  
                }
            }
        }
    }
}
