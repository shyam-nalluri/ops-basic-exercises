pipeline{
    
    agent any 
    
    environment {
        
      DOCKERHUB_CREDENTIALS=credentials('jenkins-docker-key')
      
    }
    
    stages {
        
        stage ('git_setup') {
            
            steps {
            
                git branch: 'main', credentialsId: 'git-login-cred', url: 'https://github.com/shyamriversafe/ops-basic-exercises.git'
             }
        }
        
        stage ('build') {
            
            steps {
            
                echo 'build'
             }
        }
        
        stage ('test') {
            
            steps {
            
                echo 'test'
             }
        }
        
        stage ('deploy') {
            
            steps {
                echo 'deploy'
             }
        }
    }
}