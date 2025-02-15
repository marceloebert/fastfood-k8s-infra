resource "aws_s3_bucket" "eks_state" {
  bucket = "eks-fastfood-order-terraform-state"

  tags = {
    Name        = "EKS Fastfood Terraform State"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_versioning" "eks_state_versioning" {
  bucket = aws_s3_bucket.eks_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
