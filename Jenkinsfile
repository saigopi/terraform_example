pipeline {
    agent any
    // agent { 
    //     label 'docker-slave-c96d38a2dff0' 
    stages {
        stage('Demo') {
            steps {
                dockerfile {
                    filename 'Dockerfile'
                    dir 'build'                
                }
           }
        }
    }
}
