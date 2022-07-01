provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUN5VBSYI5NJTTSXR"
  secret_key = "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"
}

variable "flag" {

}

// Create EC2 instance with associated NIC
resource "aws_instance" "ec2tf2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    count = var.flag == true ? 2: 0
}


// Create EC2 instance with associated NIC
resource "aws_instance" "ec2tf1" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.nano"
    count = var.flag == false ? 1: 0
}
