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
                sh 'mvn clean package'
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
                // Aquí puedes agregar los pasos para desplegar la aplicación en un servidor web
                // Por ejemplo, copiar el artefacto generado a la ubicación de despliegue
                sh 'cp target/*.war /ruta/del/despliegue'
            }
        }
    }
}
