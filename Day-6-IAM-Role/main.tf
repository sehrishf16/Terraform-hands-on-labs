data "aws_caller_identity" "current" {}

# 1. Create IAM User
resource "aws_iam_user" "developer" {
  name = var.iam_user_name
  path = "/users/"

  tags = merge(var.tags, {
    Name = var.iam_user_name
    Type = "HumanUser"
  })
}

# 2. Create IAM Group
resource "aws_iam_group" "developers" {
  name = var.iam_group_name
  path = "/groups/"
}

# 3. Add user to group
resource "aws_iam_user_group_membership" "developer_membership" {
  user   = aws_iam_user.developer.name
  groups = [aws_iam_group.developers.name]
}

# 4. Create IAM Policy Document
data "aws_iam_policy_document" "s3_read_only" {

  statement {
    sid     = "ListSpecifiedBucket"
    effect  = "Allow"
    actions = ["s3:ListBucket"]

    resources = [
      "arn:aws:s3:::${var.example_bucket_name}"
    ]
  }

  statement {
    sid     = "ReadObjectsInSpecifiedBucket"
    effect  = "Allow"
    actions = ["s3:GetObject"]

    resources = [
      "arn:aws:s3:::${var.example_bucket_name}/*"
    ]
  }
}

# 5. Create Customer Managed Policy
resource "aws_iam_policy" "s3_read_only" {
  name        = "${var.project_name}-s3-read-only"
  description = "S3 read only access policy"
  path        = "/"

  policy = data.aws_iam_policy_document.s3_read_only.json

  tags = var.tags
}

# 6. Attach Policy to IAM Group
resource "aws_iam_group_policy_attachment" "developers_s3_read_only" {
  group      = aws_iam_group.developers.name
  policy_arn = aws_iam_policy.s3_read_only.arn
}

# 7. Create Trust Policy for EC2
data "aws_iam_policy_document" "ec2_assume_role" {

  statement {
    sid     = "AllowEC2AssumeRole"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type = "Service"

      identifiers = [
        "ec2.amazonaws.com"
      ]
    }
  }
}

# 8. Create IAM Role
resource "aws_iam_role" "ec2_role" {
  name                 = var.iam_role_name
  path                 = "/roles/"
  description          = "EC2 role with S3 read only access"
  assume_role_policy   = data.aws_iam_policy_document.ec2_assume_role.json
  max_session_duration = 3600

  tags = merge(var.tags, {
    Name = var.iam_role_name
    Type = "WorkloadRole"
  })
}

# 9. Attach Policy to IAM Role
resource "aws_iam_role_policy_attachment" "ec2_s3_read_only" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.s3_read_only.arn
}

# 10. Create EC2 Instance Profile
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.project_name}-ec2-instance-profile"
  role = aws_iam_role.ec2_role.name

  tags = var.tags
}