pipeline {
    agent any
    stages {
        stage('Setup') {
            steps {
                // Configura ambiente virtual (opcional)
                sh 'python -m venv venv'
                sh '. venv/bin/activate'
                
                // Instala dependências
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                // Executa o teste especificado
                sh 'robot -d results /features/FichaSmoke.robot'
            }
        }
    }
}
