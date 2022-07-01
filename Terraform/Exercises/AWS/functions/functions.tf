provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUN5VBSYI5NJTTSXR"
  secret_key = "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"
}


variable "ami"{
  type = map
  default = {
    "us-east-1" = "ami-0cff7528ff583bf9a"
    "us-west-1" = "ami-09328fe9a122c38b4"
    "us-east-2" = "ami-073d7de8004a80faa"
  }
}

variable "region" {
  default = "us-east-2"
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}


// Create EC2 instance with associated NIC
resource "aws_instance" "ec2tf" {
    ami = lookup(var.ami, var.region)
    instance_type = "t2.micro"
}

output "timestamp" {
  value = local.time
}
