
resource "aws_instance" "ec2tf" {
  ami                    = "ami-0cff7528ff583bf9a"
  instance_type          = "t2.micro"
  key_name               = "tftempkey"
  vpc_security_group_ids = [aws_security_group.demo.id]

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]
    connection {
      type        = "ssh"
      user        = "ec2_user"
      private_key = file("./tftempkey.pem")
      host        = self.public_ip
    }
  }
}
