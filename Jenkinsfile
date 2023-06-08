pipeline{
	agent any

	environment{
		AWS_ACCESS_KEY = credentials('14d886a4-624f-4884-81aa-0835c6f8e437')
		AWS_SECRET_KEY = credentials('1811d972-912b-4f5d-b451-49044a08e7af')
	}

	stages{
		stage ('fetch-latest-code'){
			steps{
				checkout ([$class:'GitSCM',branches:[[name: '*/main']],extensions: [],userRemoteConfigs: [[url: 'git branch: 'main', url: 'https://github.com/KevalMarmik/class.git/'']]])
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
