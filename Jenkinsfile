pipeline{
	agent any

	stages{
		stage ('fetch-latest-code'){
			steps{
				//git https://github.com/KevalMarmik/class.git
				git branch: 'main', url: 'https://github.com/KevalMarmik/class.git'
			}
		}
		stage ('TF INIT & PLAN'){
			steps{
				sh 'terraform init'
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
