#provider "aws" {
#  #region                   = var.region
#  #access_key               = var.access_key
#  #secret_key               = var.secret_key
#  shared_credentials_file = "~/.aws/credentials"
#  profile                 = var.profile
#  max_retries              = 5
#}

#terraform {
#  backend "s3" {
#    bucket = var.bucket
#    key    = "tf_cloud"
#    region = var.region
#  }
#}

resource "null_resource" "example" {}

# resource "aws_instance" "web" {
#   ami           = "ami-0b418580298265d5c"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }
