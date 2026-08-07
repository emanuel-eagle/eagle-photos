terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.58.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

terraform {
  backend "s3" {
    bucket         = "tf-state-file-eagle-photos"
    key            = "environments/production/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    use_lockfile   = true # Enables native S3 locking (requires Terraform 1.10+)
  }
}
