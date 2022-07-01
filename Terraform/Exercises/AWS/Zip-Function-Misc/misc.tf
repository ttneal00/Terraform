

resource "aws_iam_user" "userlab" {
  name  = "iamuser${count.index}"
  count = 3
  path  = "/system/"
}

output "arns" {
  value = aws_iam_user.userlab[*].arn
}
