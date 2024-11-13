pipeline {
    agent any
    stages {
        stage('Setup') {
            steps {
                // Configura ambiente virtual (opcional)
                bat 'python -m venv venv'
                bat 'venv\\Scripts\\activate'
                
                // Instala dependências
                bat 'pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                // Executa o teste especificado
                bat 'robot -d results C:\\Users\\suporte\\Desktop\\robotFrameWork\\features\\FichaSmoke.robot'
            }
        }
    }
}
