pipeline {
  agent any 
     
        
  tools {
    maven 'maven'
  }
        
  environment {
    Snyk = 'Snyk'
    Trivy = 'Trivy'
    Audit = 'Audit'
  }
  
  stages {
    stage ('Initialize') {
      steps {
        sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                  
            ''' 
      }
    } 
    
     
 stage ('CxRun') {
      steps {
        checkmarxASTScanner additionalOptions: '', baseAuthUrl: '', branchName: 'master', checkmarxInstallation: 'checkmarxone', credentialsId: '', projectName: 'DemoCX', serverUrl: '', tenantName: ''
      }
    }  
         
    
  }
} 
