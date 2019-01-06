pipeline {
  agent {
    docker {
      image 'khalyk/sb-hosts:latest'
    }

  }
  stages {
    stage('Test') {
      steps {
        echo 'Hello World!'
      }
    }
  }
  environment {
    LC_ALL = 'C.UTF-8'
    LANG = 'C.UTF-8'
  }
}