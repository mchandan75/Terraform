variable "ami_id" {
		type = string
		default = "ami-0742b4e673072066f"
}

variable "sg_id" {}

variable "ec2_name" {}

resource "aws_instance" "terraform_ec2" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name = "terraform-course"
  vpc_security_group_ids = [var.sg_id]
  
  tags = {
    Name = "var.ec2_name"
  }
}