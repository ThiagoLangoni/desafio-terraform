resource "aws_s3_bucket" "b" {
  bucket = "lab-fiap-34scj-333947"
  acl    = "private"

  tags = {
    Name        = "lab-fiap-34scj-333947"
    Environment = "admin"
  }
}