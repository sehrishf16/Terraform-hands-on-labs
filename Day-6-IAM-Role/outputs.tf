output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "iam_user_name" {
  value = aws_iam_user.developer.name
}

output "iam_group_name" {
  value = aws_iam_group.developers.name
}

output "iam_policy_arn" {
  value = aws_iam_policy.s3_read_only.arn
}

output "iam_role_arn" {
  value = aws_iam_role.ec2_role.arn
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.ec2_profile.name
}