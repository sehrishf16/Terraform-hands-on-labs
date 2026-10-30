aws_region          = "ap-south-1"

project_name        = "company-iam"

iam_user_name       = "developer-user"

iam_group_name      = "developers"

iam_role_name       = "ec2-s3-readonly-role"

example_bucket_name = "your-existing-s3-bucket"

tags = {
  ManagedBy   = "Terraform"
  Environment = "Development"
  Project     = "IAM-Management"
}