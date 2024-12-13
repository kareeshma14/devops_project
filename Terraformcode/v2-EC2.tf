provider "aws" {
  region = "ap-south-2"
}
resource "aws_instance" "demo_server" {
  ami = "ami-081ec1aab6ca8f5ea"
  instance_type = "t3.micro"
  key_name = "ddp"
  security_groups = ["demo_sg"]
}
resource "aws_security_group" "demo_sg" {
  name        = "demo_sg"
  description = "SSH Access"
  
  ingress {
    description      = "Ssh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh-prot"

  }
  }