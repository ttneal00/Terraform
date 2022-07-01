
resource "aws_instance" "ec2tf" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = lookup(var.my-var, terraform.workspace)
}

variable "my-var" {
  type = map(string)
  default = {
    default    = "t2.small"
    dev        = "t2.nano"
    staging    = "t2.small"
    production = "t3.large"
  }
}
