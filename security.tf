provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_test_bucket" {
  bucket = "terraform_test_bucket"
  acl = "private"
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "terraform_security_group" {
  name = "terraform_security_group"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
