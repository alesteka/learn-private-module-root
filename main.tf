terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.21.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "s3-webapp" {
  source  = "app.terraform.io/terraform-app/s3-webapp/aws"
  name    = "ales"
  region  = "us-east-1"
  prefix  = "dev-test"
  version = "1.0.0"
}
