terraform {
  backend "s3" {
    bucket = "eks-fastfood-terraform-state"
    key    = "eks-fastfood/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = var.regionDefault
}