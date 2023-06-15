pipeline{
	
	agent any
	environment {
       AWS_ACCESS_KEY_ID     = credentials('e65eb390-51bf-4a69-99d0-aacebe542205')
       AWS_SECRET_ACCESS_KEY = credentials('78e6e26e-e2b5-45cb-9e69-0865064e67db')
    }
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
