pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/josevazquez99/CalculadoraExtra-a.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Deploy') {
            steps {
                container('tomcat') {
                    sh 'cp target/CalculadoraExtra.war /usr/local/tomcat/webapps/'
                }
            }
        }
        stage('Cleanup') {
            steps {
                sh 'rm -rf target/'
            }
        }
        stage('Notifications') {
            steps {
                emailext(
                    to: 'josevazquez99@example.com',
                    subject: 'Pipeline completed',
                    body: 'The pipeline has completed successfully.'
                )
            }
        }
    }
}
