pipeline {
  agent {
    docker {
      image 'khalyk/sb-hosts:latest'
    }

  }
  stages {
    stage('Run') {
      steps {
        sh "python3 /app/hosts/updateHostsFile.py --auto --extensions social porn fakenews gambling -i 127.0.0.1 --minimise"
	sh "cp /app/hosts/hosts ${WORKSPACE}"
      }
    }
  }
  
  environment {
    LC_ALL = 'C.UTF-8'
    LANG = 'C.UTF-8'
  }
  
  post {
    always {
      archiveArtifacts artifacts: 'hosts', fingerprint: true
      withAWS(region:'us-west-2', credentials:'s3-kh-hosts') {
        s3Upload(
	  file: 'hosts',
          bucket: 'kh-hosts' 
        )
      }
    }
  }
}
