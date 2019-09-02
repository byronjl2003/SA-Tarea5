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
				sh 'echo "ESTOY EN RAMA DEVELOP"'
				
			}


		}
		stage('build'){
			sh './build-script.sh'
		}
		stage('Pruebas estaticas'){
			environment {
				scannerHome = tool 'SonarQubeScanner'
			}
			steps{
				sh 'echo empieza el analisis del codigo'
				withSonarQubeEnv('sonarqube'){
					sh "${scannerHome}/bin/sonar-scanner \
  						-Dsonar.projectKey=Tarea5SA \
  						-Dsonar.sources=. \
  						-Dsonar.host.url=http://35.184.187.153:5001 \
  						-Dsonar.login=690a5e3c153b335f1e2ff40bdfbd9a95f5ea3eb4"
				}
				timeout(time: 1, unit: 'MINUTES') {
            		waitForQualityGate abortPipeline: true
        		}		
				
			}
		}


    }
    post{
	    always{
	    	sh 'echo "FIN"'
	    }
	
    }
}
