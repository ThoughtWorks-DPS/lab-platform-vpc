terraform {
  required_version = "~> 1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "twdps"
    workspaces {
      prefix = "lab-platform-vpc-"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/${var.assume_role}"
    session_name = "lab-platform-vpc-${var.cluster_name}"
  }

  default_tags {
    tags = {
      env      = var.cluster_name
      cluster  = var.cluster_name
      pipeline = "lab-platform-vpc"
      "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    }
  }
}

