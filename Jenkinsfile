pipeline {
    agent any
    // agent { 
    //     label 'docker-slave-c96d38a2dff0' 
    stages {
        stage('Demo') {
            steps {
                sh "docker build -t generali-backend -f Dockerfile ."
            //    dockerfile {
            //        filename 'Dockerfile.build'
            //        dir 'build'
            //        label 'my-defined-label'
            //        additionalBuildArgs  '--build-arg version=1.0.2'
            //        args '-v /tmp:/tmp'
               }
            }             
        }
    }
}


