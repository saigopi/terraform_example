pipeline {
    agent any
    // agent { 
    //     label 'docker-slave-c96d38a2dff0' 
    stages {
        stage('Demo') {
            step([$class: 'DockerBuilderPublisher', cleanImages: false, cleanupWithJenkinsJobDelete: false, cloud: '', dockerFileDirectory: '.', fromRegistry: [], pushCredentialsId: '', pushOnSuccess: false, tagsString: ''])               
        }
    }
}


