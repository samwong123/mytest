pipeline {
    agent any
	
	environment { 
        PATH = """${sh(
                returnStdout: true,
                script: 'echo $PATH:/var/jenkins_home/tools/org.jenkinsci.plugins.golang.GolangInstallation/go-1.16/go/bin'
            )}""" 
		
		
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL} on ${env.WORKSPACE}"
				echo "PATH = ${env.PATH}"

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}