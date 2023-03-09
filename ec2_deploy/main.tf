provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    Name = "EC2 Instance"
  }
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "MYKEYPAIR"
}

variable "subnet_id" {
  type    = string
  default = "subnet-0c7ac7f89c870e473"
}

variable "ami" {
  type    = string
  default = "ami-06d94a781b544c133"
}
