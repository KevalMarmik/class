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
  access_key = "94237946-e563-4a2f-884e-2f0039fe4f4c"
  secret_key = "6b10d1f9-d0a8-44fb-8250-21a91c9c9123"
}
resource "aws_instance" "myec2" {
   ami = "ami-0bef6cc322bfff646"
   instance_type = "t2.micro"
   key_name = "key"
   tags = {
      Name = "Example"
   }

}
