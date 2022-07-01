// Create EC2 instance with associated NIC
resource "aws_instance" "ec2tf" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.list[1]
}
