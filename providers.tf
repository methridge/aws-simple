terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::218685523158:role/tfc_role"
    session_name = "network_hub"
  }
}
