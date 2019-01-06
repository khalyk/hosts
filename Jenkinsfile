pipeline {
  agent {
    docker {
      image 'khalyk/sb-hosts:latest'
      args '-u root'
    }

  }
  stages {
    stage('Run') {
      steps {
        sh "python3 /app/hosts/updateHostsFile.py --auto --extensions social porn fakenews gambling --compress -o hosts.txt"
      }
    }
  }
  
  environment {
    LC_ALL = 'C.UTF-8'
    LANG = 'C.UTF-8'
  }
  
  post {
    always {
      archiveArtifacts artifacts: 'hosts.txt', fingerprint: true
    }
  }
}
