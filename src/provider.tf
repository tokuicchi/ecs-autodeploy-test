terraform {
  required_version = "~> 1.6.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.4.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "ManagedBy"       = "Terraform"
      "CreatedBy"       = var.account_id
      "Identity"        = var.identity
      "ApplicationName" = var.app_name
    }
  }
}
