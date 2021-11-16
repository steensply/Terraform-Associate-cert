provider "aws" {
  region = "eu-west-3"
  profile = "sleek-terraformcourse"
}

provider "random" {}

resource "random_pet" "name" {}

resource "aws_instance" "web" {
  ami           = "ami-05f0a049e7aeb407c"
  instance_type = "t2.micro"
  user_data     = file("init-script.sh")
  vpc_security_group_ids = [aws_security_group.web-sg.name]

  tags = {
    Name = random_pet.name.id
  }
}

resource "aws_security_group" "web-sg" {
  name = "web-sg"
  vpc_id = "vpc-11de0879"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}