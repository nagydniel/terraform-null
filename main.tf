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

resource "aws_instance" "web" {
  ami           = "ami-0b418580298265d5c"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
