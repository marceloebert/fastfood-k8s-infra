resource "aws_iam_role_policy_attachment" "attach_s3_policy" {
  role       = "voclabs" # Substitua pelo nome da sua role
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
