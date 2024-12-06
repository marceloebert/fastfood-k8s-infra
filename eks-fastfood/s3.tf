resource "aws_s3_bucket" "app_fastfood" {
  bucket = "eks-fastfood-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "EKS Fastfood Terraform State"
    Environment = "Production"
  }
}
