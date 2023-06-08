pipeline{
	agent any

	stages{
		stage ('fetch-latest-code'){
			steps{
				git 'https://github.com/KevalMarmik/class.git'
				//git branch: 'main', url: 'https://github.com/KevalMarmik/class.git'
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
