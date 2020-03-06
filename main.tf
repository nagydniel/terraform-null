provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = var.profile
  max_retries             = 5
}

terraform {
  backend "s3" {}
}

resource "null_resource" "example" {}
