pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                python -m pip install --upgrade pip
                python -m pip install virtualenv
                virtualenv venv
                . venv/bin/activate
                pip3 install flake8
                deactivate
                '''
            }
        }
        stage("Validate"){
            steps{
                sh 'pip install flake8'
                sh 'flake8 sources/Hello.py'
            }
        }
        stage("Deploy")
        {
            steps{
                sh 'docker version'

            }

        }

    }
}
