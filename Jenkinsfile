pipeline {
    agent any
 
    stages {
        stage('Git') {
            steps {
                script {
                    echo 'go_git: ' + go_git
                    if( go_git.toBoolean() ) {
                        // Get some code from a Gitlab
                        git branch: 'main', url: 'https://github.com/HarveyTangg/test.git'
                    }
                }
            }
        } 
        
        stage('Build') {
            environment { 
                    PATH= sh (returnStdout: true, script: 'echo /opt/apache-maven-3.9.0/bin:$PATH').trim()
            }
            steps {
                script {
                    echo 'go_build: ' + go_build
                    //sh 'export PATH=/opt/apache-maven-3.9.0/bin:$PATH'
                    sh 'env'
                    sh 'echo $PATH'
                    if( go_build.toBoolean() ) {
                        
                        
                                        
                    } 
                }
            }
        }
        
        /*stage('Deploy') {
            steps {
                sh 'podman ps -a'
                script {
                    echo 'go_deploy: ' + go_deploy
                    if( go_deploy.toBoolean() ) {
                        service_names.each() {
                            echo 'deploying ' + it
                            dir(it) {
                                sh 'pwd'
                                sh 'podman build -t localhost:5000/' + it + ' .'
                                //sh 'podman tag ' + it + ' localhost:5000/' + it
                                sh 'podman push localhost:5000/' + it
                                sh 'podman image search localhost:5000/ --tls-verify=false'
                                sh 'podman image ls'
                            }                        
                        }
                    }
                }
            }
            
            post {
                success {
                    echo 'Deployed successfully'
                }
            }
        } */
        
        stage('Clean') {
            steps {
                script {
                    echo 'go_clean: ' + go_clean
                    if( go_clean.toBoolean() ) {
                        echo 'cleaning '
                        sh 'pwd'
                        sh 'rm -rf ./*'
                    }
                }
            }
            
            post {
                success {
                    echo 'Clean successfully'
                }
            }
        }
    }
}
