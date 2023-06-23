pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('run') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
}
