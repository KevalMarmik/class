pipeline{
// 	parameters {
// 		string(name: 'environment', defaultValue: 'terraform', description: 'Workspace/environment file to use')
// 	}
// 	environment {
// 		AWS_ACCESS_KEY     = credentials('AWS_ACCESS_KEY')
// 		AWS_SECRET_KEY = credentials('AWS_SECRET_KEY')
    
// 	}
	
	agent any
	stages{
		stage ('fetch-latest-code'){
			steps{
				//git 'https://github.com/KevalMarmik/class.git'
				git branch: 'main', url: 'https://github.com/KevalMarmik/class.git'
			}
		}
		
		stage ('TF INIT'){
			steps{
				withCredentials([string(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437', variable: 'AWS_ACCESS_KEY_ID'),
                                 string(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af', variable: 'AWS_SECRET_KEY')]) {
					sh 'terraform init'
				}
			}
		}
		stage ('TF PLAN'){
			steps{
				withCredentials([string(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437', variable: 'AWS_ACCESS_KEY_ID'),
                                 string(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af', variable: 'AWS_SECRET_KEY')]) {
					sh 'terraform plan'
				}
			}
		}
		stage ('TF APPLY'){
			steps{
				sh 'terraform apply --auto-approve'
			}
		}
	}
}
