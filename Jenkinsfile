pipeline{
	
	agent any
	stages{
		withCredentials([usernamePassword(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437', passwordVariable: '', usernameVariable: 'AWS_ACCESS_KEY'),
						usernamePassword(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af', passwordVariable: '', usernameVariable: 'AWS_SECRET_KEY')]) {
		}
		
		stage ('fetch-latest-code'){
			steps{
				//git 'https://github.com/KevalMarmik/class.git'
				git branch: 'main', url: 'https://github.com/KevalMarmik/class.git'
			}
		}
	
		stage ('TF INIT'){
			steps{
				
					sh 'terraform init'
				
			}
		}
		stage ('TF PLAN'){
			steps{
				sh 'terraform plan'
			}
		}
		stage ('TF APPLY'){
			steps{
				sh 'terraform apply --auto-approve'
			}
		}
	}
}
