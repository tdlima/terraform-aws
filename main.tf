provider "aws" {
  version   = "~> 2.0"
  region    = "us-east-2"
}

terraform {
    backend "s3" {
        bucket = "terraform-project"
        key     = "terraform.tfstate"
        region  = "us-east-2"
  }
}
