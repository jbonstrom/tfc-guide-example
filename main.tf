provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example_instance" {
  ami  = "ami-05655c267c89566dd"
  instance_type = "t2.micro"
  
  tags = {
	Name = "${var.instance_name}"
	}
  
}
