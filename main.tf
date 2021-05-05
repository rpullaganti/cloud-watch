terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.25.1 and above) recommends Terraform 0.13.3 or above.
  required_version = ">= 0.13.3"

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.8.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_cloudwatch_log_group" "loggroup" {
  name = var.name
  retention_in_days = var.retention_in_days 

  tags = var.tags
}
