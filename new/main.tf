terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.25.1 and above) recommends Terraform 0.13.3 or above.
  required_version = ">= 0.15.0"
  experiments = [module_variable_optional_attrs]

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.38.0"
    }
  }
}

resource "aws_cloudwatch_log_group" "log_group" {
  count = length(var.log_group)

  name = var.log_group[count.index].name
  retention_in_days = var.log_group[count.index].retention_in_days 
  kms_key_id = var.log_group[count.index].kms_key_id

  tags = var.tags
}
