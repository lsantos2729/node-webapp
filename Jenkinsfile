pipeline {
    agent { label 'cid1b' }
    stages {
        stage('Build') {
            steps {
                cd /home/lsantos/node-webapp 
                sh 'docker build -t node-app_image .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 3000:3000 node-app_image'
            }
        }
    }
}