// AWS Elastic IP Provision
resource "aws_eip" "ec2tfeip" {
  vpc      = true
  provider = aws.ohio
}

// AWS Elastic IP Provision
resource "aws_eip" "ec2tfeip2" {
  vpc      = true
  provider = aws.virginia
}
