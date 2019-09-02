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
				sh 'docker run hello-world'
			}


		}
		stage('build'){
			steps{
				sh 'docker --version'
				sh 'docker build -t byronjl2003/sa-esb:0.0.0  ./ESB'
			}
		}


    }
    post{
	    always{
	    	sh 'echo "FIN"'
	    }
	
    }
}
