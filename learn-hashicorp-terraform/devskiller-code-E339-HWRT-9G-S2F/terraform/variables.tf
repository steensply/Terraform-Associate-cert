variable "ami_id" {
  type    = string
  default = "ami-0be656e75e69af1a9"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "availability_zone" {
  type    = string
  default = "eu-central-1"
}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.10.0/24"
}

variable "private_ips" {
  type    = list(any)
  default = ["10.0.10.250"]
}

variable "ebs_device_name" {
  type    = string
  default = "/dev/sdc"
}

variable "ebs_device_size" {
  type    = number
  default = 2
}
