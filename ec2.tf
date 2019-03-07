provider "aws" {
  region = "us-east-1"
  access_key = "AKIAIBXIA2LND4EDQHTA"
  secret_key = "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"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["326810841023"]
}

resource "aws_instance" "web" {
  ami           = "ami-05a36d3b9aa4a17ac"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}

