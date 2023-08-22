terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "otavn-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
