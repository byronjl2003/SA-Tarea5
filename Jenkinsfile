pipeline{
    agent any
	/*tools {
        hudson.plugins.sonar.SonarRunnerInstallation 
    }
	*/
    stages{
		stage('Inicio'){
			steps{
				sh 'echo "HOLA"'
				sh 'echo "ESTOY EN RAMA MASTER"'
			}


		}
		stage('build'){
			sh './build-script.sh'
		}


    }
    post{
	    always{
	    	sh 'echo "FIN"'
	    }
	
    }
}
