pipeline {
    agent none

    stages {
        stage('Build') {
                agent{
            docker {
                image 'python:3.9'
                }
            }
            steps {
                sh '''
                python -m pip install --upgrade pip
                python -m pip install virtualenv
                virtualenv venv
                . venv/bin/activate
                pip3 install flake8
                deactivate
                '''
                sh 'pip install flake8'
            }
        }
        stage("Validate"){
                agent{
            docker {
                image 'python:3.9'
                }
            }
            steps{
                sh 'flake8 sources/Hello.py'
            }
        }
        stage("Deploy")
        {
            agent{
                 docker {
                    image 'docker'
                    args '-u root:root -p 3000:3000 --privileged -v /var/run/docker.sock:/var/run/docker.sock'
                 }
             }
            steps{
                sh 'docker version'

            }

        }

    }
}
