pipeline{
    agent{
        docker{
            image "python:latest"
            args '-u root -v ${WORKSPACE}/pipenv:/root/.local'
        }
    }
    stages{
        stage("Установка зависимости"){
            steps{
                sh "pip install --user -r requirements.txt"
            }
        }
    }
}