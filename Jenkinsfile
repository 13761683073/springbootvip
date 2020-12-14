pipeline {
  agent any
  stages {
    stage('Build and publish docker image') {
      steps {
        sh '''cd $WORKSPACE
docker build -t test-service:v$BUILD_NUMBER -f Dockerfile .

docker stop test-service

docker rm test-service

docker run -d -p 8888:8080 --name test-service \\
 --ip="172.30.1.2" \\
 -v /root/jenkins/apache-tomcat-9.0.7/webapps/jenkins:/usr/tomcat/webapps/jenkins \\
 -v /root/.jenkins:/root/.jenkins test-service:v$BUILD_NUMBER'''
      }
    }

  }
}