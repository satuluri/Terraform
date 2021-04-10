provider "aws" {
  region     = "us-east-1"
}

resource "aws_security_group" "test_sg" {
  name = var.sg_name
  count = 1
}
