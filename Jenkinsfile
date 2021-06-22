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
				echo "PATH = ${env.PATH}"
                echo "BUILD_ID = ${env.BUILD_ID}"
				echo "JENKINS_URL = {env.JENKINS_URL}"
				echo "WORKSPACE = ${env.WORKSPACE}"
				echo "GIT_URL = ${env.GIT_URL}"								
				echo "PWD = $pwd"
				echo "PATH = $PATH"
				sh "sh build.sh"

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