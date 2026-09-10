

pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                echo 'Building...'
                bat "docker build -t mydockerapp."
            }
        }
       stage('Run'){
        steps{
            echo 'Running...'
            bat "docker rm -f mydockerapp || exit 0"
            bat "docker run -d -p 5000:5000 mydockerapp"
        }
       }
    }
    post{
        success{
            echo 'Pipeline completeed successfully!'
        }
        failure {
            echo 'Pipeline failed.please check then logs'
        }
    }
}