#provider "aws" {
#  alias     = "west2"
#  region    = "us-west-2"
#  version   = "~> 2.0"
#}

provider "aws" {
  region    = "us-east-2"
  version   = "~> 2.0"
}

terraform {
    backend "s3" {
        bucket = "terraform-project"
        key     = "terraform.tfstate"
        region  = "us-east-2"
  }
}
