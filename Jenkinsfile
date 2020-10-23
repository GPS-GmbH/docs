pipeline {
  agent {
    docker {
      image 'registry.exa.sicon.io/exa/ci-build:latest'
      args '-u node:docker'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'docker build . -t registry.exa.sicon.io/sicon/help:${BRANCH_NAME}'
      }
    }
    stage('publish') {
      steps {
        sh 'docker push registry.exa.sicon.io/sicon/help:${BRANCH_NAME}'
      }
    }
  }
  post {
    always {
      deleteDir()
    }
  }
}
