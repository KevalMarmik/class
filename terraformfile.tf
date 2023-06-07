pipeline{
	agent any

	environment{
		AWS_ACCESS_KEY = credentials('ACCESS_KEY')
		AWS_SECRET_KEY = credentials('SECRET_KEY')
	}

	tools{
		terraform 'terraform'
	}

	stages{
		stage ('fetch-latest-code'){
			steps{
				checkout ([$class:'GitSCM',branches:[[name: '*/main']],extensions: [],userRemoteConfigs: [[url: 'https://github.com/KevalMarmik/class.git']]])
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
