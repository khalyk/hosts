pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/StevenBlack/hosts.git', branch: 'master', poll: true)
      }
    }
  }
}