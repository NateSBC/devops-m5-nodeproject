pipeline {
    agent any
    stages {
        stage('Stop node-project'){
            steps {
                sh 'docker stop nodejs-project || true'
                sh 'docker rm nodejs-project || true'
            }
        }

        stage('Build Image'){
            steps {
                sh 'docker build -t nodejs-project:${BUILD_NUMBER} .'
            }       
        }


        stage('Run'){
            steps {
                sh 'docker run -p 80:5000 --name nodejs-project -d nodejs-project:${BUILD_NUMBER}'
            }
        }
    }
}
        
