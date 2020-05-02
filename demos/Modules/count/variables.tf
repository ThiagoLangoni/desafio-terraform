locals {
  env = "${terraform.workspace}"

  context = {
    default = {
      quantidadeInstancias = 2
    }
    dev = {
      quantidadeInstancias = 2
    }
    homol = {
      quantidadeInstancias = 3
    }
    prod = {
      quantidadeInstancias = 4
    }
  }

  context_variables = "${local.context[local.env]}"
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "aws_amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "KEY_NAME" {
  default = "fiap-lab"
}

variable "PATH_TO_KEY" {
  default = "/home/ubuntu/.ssh/fiap-lab.pem"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

