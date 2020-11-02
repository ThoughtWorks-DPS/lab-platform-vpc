terraform {
  required_version = "~> 0.13"
  required_providers {
    aws = "~> 3.13"
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
  version = "~> 3.0"
  region  = var.aws_region
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/${var.assume_role}"
    session_name = "lab-platform-vpc-${var.cluster_name}"
  }
}

variable "aws_region" {}
variable "account_id" {}
variable "assume_role" {}

variable "cluster_name" {}
variable "vpc_cidr" {}
variable "vpc_azs" {}
variable "vpc_private_subnets" {}
variable "vpc_public_subnets" {}
variable "vpc_intra_subnets" {}
