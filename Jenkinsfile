pipeline {
  agent {
    node {
      label 'Ferinir'
    }
  }
  stages {
     stage('Cleaning old images') {
         when {
            triggeredBy 'UserIdCause'
        }
        steps {
            sh('docker-compose rm postgres')
        }
     }
    stage('Build docker image') {
      steps {
        echo "${currentBuild.buildCauses}"
        sh 'docker-compose build'
      }
    }
    stage('Run docker image') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
}