pipeline {
    agent any

    environment {
        APP_VERSION = "1.0.0"
        BUILD_TS = "${new Date().format('yyyy-MM-dd HH:mm:ss')}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'app.sh', fingerprint: true
            }
        }
    }

    post {
        success {
            echo "Build succeeded!"
        }
        failure {
            echo "Build failed!"
            echo "Build URL: ${env.BUILD_URL}"
        }
        always {
            cleanWs()
        }
    }
}
