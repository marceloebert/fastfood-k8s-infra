resource "aws_iam_policy" "allow_s3_bucket_operations" {
  name        = "AllowS3BucketOperations"
  description = "Policy to allow S3 bucket creation and management"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "s3:CreateBucket",
          "s3:PutBucketVersioning",
          "s3:PutBucketTagging",
          "s3:PutBucketPolicy",
          "s3:GetBucketLocation",
          "s3:ListBucket"
        ],
        Resource = "arn:aws:s3:::*"
      }
    ]
  })
}
