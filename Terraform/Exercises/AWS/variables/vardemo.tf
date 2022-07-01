provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUN5VBSYI5NJTTSXR"
  secret_key = "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"
}


resource "aws_security_group" "demo" {
  name = "my-var-demo"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [var.myip]

  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.myip]

  }
}
