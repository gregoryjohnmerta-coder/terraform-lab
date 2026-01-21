pipeline {
  agent any
  triggers {
    pollSCM('H/3 * * * *')
  }
  stages {
    stage('Test stage') {
      steps {
        sh 'ls -l'
        sh 'terraform -version'
        sh 'aws sts get-caller-identity'
      }
    }
  }
}
