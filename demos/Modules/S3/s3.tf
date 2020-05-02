resource "aws_s3_bucket" "b" {
  bucket = "desafio-333947"
  acl    = "private"

  tags = {
    Name        = "desafio-333947"
    Environment = "admin"
  }
}