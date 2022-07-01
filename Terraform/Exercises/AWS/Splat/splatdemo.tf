resource "aws_iam_user" "user1" {
  name  = "iamuserme.${count.index}"
  count = 6
  path  = "/system/"
}

output "arns" {
  value = aws_iam_user.user1[*].arn
}
