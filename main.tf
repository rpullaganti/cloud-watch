terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.25.1 and above) recommends Terraform 0.13.3 or above.
  required_version = ">= 0.15.0"

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.38.0"
    }
  }
}

resource "aws_cloudwatch_log_group" "log_group" {
  name = var.name
  retention_in_days = var.retention_in_days 
  name_prefix = var.name_prefix
  kms_key_id = var.aws_kms_key_id

  tags = var.tags
}
