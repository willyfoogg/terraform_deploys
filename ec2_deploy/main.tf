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
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "my_key_pair"
}

variable "subnet_id" {
  type    = string
  default = "subnet-1234567890"
}

variable "ami" {
  type    = string
  default = "ami-006dcf34c09e50022"
}
