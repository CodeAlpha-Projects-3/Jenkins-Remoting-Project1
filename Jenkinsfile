pipeline {
    agent { label 'remote-worker' } // 

    stages {
        stage('Environment Check') {
            steps {
                echo "Running on Distributed Node..."
                sh 'hostname'
                sh 'whoami'
            }
        }
        stage('Workload Distribution') {
            steps {
                sh 'echo "Task 2: Jenkins Remoting Successful!"'
            }
        }
    }
}
