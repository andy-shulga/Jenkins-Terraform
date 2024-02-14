provider "aws" {
    region = "us-west-1"  
}

resource "aws_instance" "ec2" {
  ami           = "ami-02d3fd86e6a2f5122" 
  instance_type = "t2.micro"
  tags = {
      Name = "Jankins-created"
  }
}
