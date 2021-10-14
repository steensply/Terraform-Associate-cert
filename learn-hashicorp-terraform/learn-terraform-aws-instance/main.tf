terraform {
  backend "remote" {
    organization = "Example-Workspace-Sleek"

    workspaces {
      name = "Example-Workspace-Sleek"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "sleek-terraformcourse"
  region  = "eu-west-3"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0eb34a1ff6bafc83f"
  instance_type = "t2.micro"

  tags = {
    "Name" = var.instance_name
  }

}