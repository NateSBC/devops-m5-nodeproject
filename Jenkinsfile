pipeline {
    agent any
    stages {
        stage('Stop node-project'){
            steps {
                sh 'docker stop node-project || true'
                sh 'docker rm node-project || true'
            }
        }

        stage('Build Image'){
            steps {
                sh 'docker build -t nodejs-package:${BUILD_NUMBER} .'
            }       
        }


        stage('Run'){
            steps {
                sh 'docker run -p 80:5000 --name nodejs-project -d --image nodejs-project${BUILD_NUMBER}'
            }
        }
    }
}
        
