pipeline {
  agent any
  stages {
    stage('Test stage') {
      steps {
        sh 'ls -l'
        sh 'terraform -version'
        sh 'aws sts get-caller-identity'
        sh 'which ping'
      }
    }
  }
}
