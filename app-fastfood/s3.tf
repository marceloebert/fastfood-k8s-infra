resource "aws_s3_bucket" "app_state" {
  bucket = "app-fastfood-terraform-state"

  tags = {
    Name        = "App Fastfood Terraform State"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_versioning" "app_state_versioning" {
  bucket = aws_s3_bucket.app_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
