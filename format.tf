provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUN5VBSYI5NJTTSXR"
  secret_key = "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"
}

// Create EC2 instance with associated NIC
resource "aws_instance" "ec2tf" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
}
