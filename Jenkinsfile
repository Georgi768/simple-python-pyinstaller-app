pipeline {
    agent{
            docker {
            image 'python:3.9'
        }
    }

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
                sh 'pip install flake8'
            }
        }
        stage("Validate"){
            steps{
                sh 'flake8 sources/Hello.py'
            }
        }
        stage("Test")
        {
            steps{
                sh """
                    docker build -t Challenge/Hello.py:lastest
                """

            }

        }

    }
}
