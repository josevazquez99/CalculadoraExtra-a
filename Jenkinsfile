pipeline {
    agent any
    
    stages {
        stage('Clonar Repositorio') {
            steps {
                // Clonar el repositorio desde Git
                git 'https://github.com/josevazquez99/CalculadoraExtra-a.git'
            }
        }
        stage('Compilar') {
            steps {
                // Compilar el proyecto Maven
                sh 'mvn clean compile'
            }
        }
        stage('Pruebas') {
            steps {
                // Ejecutar pruebas automatizadas
                sh 'mvn test'
            }
        }
        stage('Desplegar') {
            steps {
                // Desplegar la aplicación en un servidor web, por ejemplo, Tomcat
                // Puedes ajustar este comando según tu entorno de despliegue
                sh 'mvn tomcat7:deploy'
            }
        }
    }
}
