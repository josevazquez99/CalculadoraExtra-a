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
                // Despliegue de la aplicación en un servidor web
                // Por ejemplo, si estás usando Tomcat
                // Puedes copiar el archivo WAR generado al directorio webapps
                sh 'cp target/*.war /ruta/de/despliegue/de/tomcat/webapps/'
            }
        }
    }
}
