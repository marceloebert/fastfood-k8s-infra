resource "aws_s3_bucket" "app_fastfood" {
  bucket = "app-fastfood-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "APP Fastfood Terraform State"
    Environment = "Production"
  }
}
