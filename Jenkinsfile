pipeline{
// 	parameters {
// 		string(name: 'environment', defaultValue: 'terraform', description: 'Workspace/environment file to use')
// 	}
	environment {
		AWS_ACCESS_KEY     = credentials('AWS_ACCESS_KEY')
		AWS_SECRET_KEY = credentials('AWS_SECRET_KEY')
    
	}
	
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
