terraform {
  required_version = "1.2.2"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project   = "Serverless REST API"
      CreatedAt = "2021-09-05"
      ManagedBy = "Terraform"
      Owner     = "Byron Murillo"
      Env       = var.env
    }
  }
}
