terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.62.0"
    }
  }
}

provider "aws" {
  region  = "eu-west-3"
  profile = "sleek-terraformcourse"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0eb34a1ff6bafc83f"
  instance_type = "t2.micro"

  tags = {
    Name = "MyServer"
  }
}
