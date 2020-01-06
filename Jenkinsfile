pipeline {
  agent {
    node {
      label 'Ferinir'
    }

  }
  stages {
    stage('Build docker image') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('Run docker image') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
  environment {
  CLEAR_DB = "FALSE"
  }
}