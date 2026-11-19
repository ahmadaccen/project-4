provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "s3_user" {
  name = "terraform-s3-user-ahmad"
}

resource "aws_iam_user_policy" "s3_read_policy" {
  name = "S3ReadPolicy"
  user = aws_iam_user.s3_user.name

  policy = var.s3_read_policy
}
