locals {
  env = "${terraform.workspace}"

  context = {
    default = {
      name = "${var.filename}-dev.txt",
      quantidadeInstancias = 2
    }
    dev = {
      name = "${var.filename}-dev.txt"
      quantidadeInstancias = 2
    }
    homol = {
      name = "${var.filename}-homol.txt"
      quantidadeInstancias = 3
    }
    prod = {
      name = "${var.filename}-prod.txt"
      quantidadeInstancias = 4
    }
  }

  context_variables = "${local.context[local.env]}"
}

// Creates a new local file with the given filename and content
resource "local_file" "test" {
  content  = "${local.env}${lookup(local.context_variables, "quantidadeInstancias")}"
  filename = "${path.module}/${lookup(local.context_variables, "name")}"
}