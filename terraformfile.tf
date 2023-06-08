terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}

provider "aws" {
  region     = "us-east-1"
  access_key = ["${AWS_ACEESS_KEY}"]
  secret_key = ["${AWS_SECRET_KEY}"]
}
resource "aws_instance" "myec2" {
   ami = "ami-0bef6cc322bfff646"
   instance_type = "t2.micro"
   key_name = "key"
   tags = {
      Name = "Example"
   }

}
