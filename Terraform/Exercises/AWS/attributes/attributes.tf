provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUN5VBSYI5NJTTSXR"
  secret_key = "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"
}

resource "aws_eip" "mylb" {
vpc= true
}

resource "aws_s3_bucket" "mytemps3" {
  bucket = "bucket-S3-attributes"
}
