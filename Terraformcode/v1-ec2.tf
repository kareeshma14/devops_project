provider "aws" {
  region = "ap-south-2"
}
resource "aws_instance" "demo_server" {
  ami = "ami-081ec1aab6ca8f5ea"
  instance_type = "t3.micro"
  key_name = "dpp"
}