pipeline{
	
	agent any
	environment {
       AWS_ACCESS_KEY_ID     = credentials('14d886a4-624f-4884-81aa-0835c6f8e437')
       AWS_SECRET_ACCESS_KEY = credentials('1811d972-912b-4f5d-b451-49044a08e7af')
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
				//withCredentials([usernamePassword(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437', passwordVariable: '', usernameVariable: 'AWS_ACCESS_KEY'),
				//		usernamePassword(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af', passwordVariable: '', usernameVariable: 'AWS_SECRET_KEY')]) {
					sh 'terraform init'
				//}
			}
		}
		stage ('TF PLAN'){
			steps{
// 				withCredentials([usernamePassword(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437', passwordVariable: '', usernameVariable: 'AWS_ACCESS_KEY'),
// 						usernamePassword(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af', passwordVariable: '', usernameVariable: 'AWS_SECRET_KEY')]) {
					sh 'terraform plan'
				//}
				
			}
		}
		stage ('TF APPLY'){
			steps{
// 				withCredentials([usernamePassword(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437', passwordVariable: '', usernameVariable: 'AWS_ACCESS_KEY'),
// 						usernamePassword(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af', passwordVariable: '', usernameVariable: 'AWS_SECRET_KEY')]) {
					sh 'terraform apply --auto-approve'
				//}
				
			}
		}
	}
}
