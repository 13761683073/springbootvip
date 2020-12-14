pipeline {
  agent any
  stages {
    stage('Build and publish docker image') {
      steps {
        sh '''cd $WORKSPACE
docker build -t TestService:v$BUILD_NUMBER -f Dockerfile .

docker stop TestService

docker rm TestService

docker run -d -p 8888:8080 --name TestService \\
 --ip="172.30.1.2" \\
 -v /root/jenkins/apache-tomcat-9.0.7/webapps/jenkins:/usr/tomcat/webapps/jenkins \\
 -v /root/.jenkins:/root/.jenkins aim-service:v$BUILD_NUMBER'''
      }
    }

  }
}