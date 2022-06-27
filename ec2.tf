
resource "aws_instance" "ec2tf" {
  ami                    = "ami-0cff7528ff583bf9a"
  instance_type          = "t2.micro"
  key_name               = "tftempkey"
}
