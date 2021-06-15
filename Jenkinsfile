pipeline {
//None parameter in the agent section means that no global agent will be allocated for the entire Pipeline’s
//execution and that each stage directive must specify its own agent section.
    agent {
        docker 'python:3.9'
    }
    stages {
        stage('Build') {
            steps {
                   sh 'pip install --user -r requirements.txt'
                   sh 'pip install flake8'
                   sh 'flake8 sources/calc.py'
            }
        }
    }
}
