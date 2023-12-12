pipeline{
    agent none
    stages{
        stage("Установка зависимости"){
            agent{
        docker{
            image "python:latest"
            args '-u root -v ${WORKSPACE}/pipenv:/root/.local'
        }
    }
            steps{
                sh "pip install --user -r requirements.txt"
            }
        }
        stage("test"){
            agent{
        docker{
            image "python:latest"
            args '-u root -v ${WORKSPACE}/pipenv:/root/.local'
        }
    }
            steps{
                sh "python manage.py test"
            }
        }
        stage("build"){
            agent any
            steps{
                sh"docker build -t zahyr/jangodemo:latest ."
            }

                
        }
    }
}