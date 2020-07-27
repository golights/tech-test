#
#  AWS provider and common resources
#
provider "aws" {
  profile = "default"
  region  = var.aws_region
}
