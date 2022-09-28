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
                sh 'docker build -t shyamnalluri/mr-file-scanner:1.0 . '
             }
        }
        
        stage ('test') {
            
            steps {
            
                echo 'test'
                sh 'docker run shyamnalluri/mr-file-scanner:1.0'
             }
        }
        
        stage ('login'){
            steps {
                echo 'logging in to docker hub'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        
        stage ('deploy') {
            
            steps {
                echo 'deploy'
                sh 'docker push shyamnalluri/mr-file-scanner:1.0'
             }
        }
    }
}