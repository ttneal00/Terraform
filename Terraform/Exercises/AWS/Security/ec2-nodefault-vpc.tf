// Create Nic and associate with  Subnet
resource "aws_network_interface" "myec2tfnic" {
  subnet_id = "subnet-08e709cbe65d8cf2b"
  tags = {
    Name = "EC2tf Primary Nic"
  }
}
// Create EC2 instance with associated NIC
resource "aws_instance" "ec2tf" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    network_interface {
      network_interface_id = aws_network_interface.myec2tfnic.id
      device_index = 0
    }
}
// AWS Elastic IP Provision
resource "aws_eip" "ec2tfeip" {
  vpc = true
}

resource "aws_eip_association" "my_eip_assoc" {
  instance_id = aws_instance.ec2tf.id
  allocation_id = aws_eip.ec2tfeip.id
}
