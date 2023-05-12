stage('Build ImG From Docker file'){
    sh 'docker build -t name .'
}
stage('Push Docker Images to Nexus Registry'){
    sh 'docker push http://44.201.118.101:8081/repository/demorep/'
}
stage('Docker Nexus Auth'){
    sh 'docker login -u admin -p admin http://44.201.118.101:9001/'
}