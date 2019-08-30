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


    }
    post{
	    always{
	    	sh 'echo "FIN"'
	    }
	
    }
}
