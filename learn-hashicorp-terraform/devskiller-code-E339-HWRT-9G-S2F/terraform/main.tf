resource "aws_instance" "webserver" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  network_interface {
    network_interface_id = aws_network_interface.network_interface.id
    device_index         = 0
  }

  tags = {
    Name = "WebServer"
  }
}

resource "aws_vpc" "webserver_vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "webserver"
  }
}

resource "aws_subnet" "webserver_subnet" {
  vpc_id            = aws_vpc.webserver_vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "network_interface" {
  subnet_id   = aws_subnet.webserver_subnet.id
  private_ips = var.private_ips

  tags = {
    Name = "primary_network_interface"
  }
}


resource "aws_volume_attachment" "webserver_ebs" {
  device_name = var.ebs_device_name
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.webserver.id
}


resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone
  size              = var.ebs_device_size
}
