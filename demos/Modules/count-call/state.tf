terraform {
  backend "s3" {
    bucket = "desafio-333947"
    key    = "workspaces"
    region = "us-east-1"
  }
}