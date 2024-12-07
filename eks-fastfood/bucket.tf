resource "aws_s3_bucket" "backend-tf" {
  bucket = "eks-fastfood-terraform-state"
}