provider "aws" {
  region = "us-east-1"
  aws_access_key_id = AKIAQ4UI3REWYDNRMCGL
  aws_secret_access_key = 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
}

resource "aws_instance" "my_instance" {
    name = "test_ec2"
    region = 
}

