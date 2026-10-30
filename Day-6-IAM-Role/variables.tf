variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "company-iam"
}

variable "iam_user_name" {
  description = "IAM user name"
  type        = string
  default     = "developer-user"
}

variable "iam_group_name" {
  description = "IAM group name"
  type        = string
  default     = "developers"
}

variable "iam_role_name" {
  description = "IAM role name"
  type        = string
  default     = "ec2-s3-readonly-role"
}

variable "example_bucket_name" {
  description = "sehrish1610bucket"
  type        = string

  validation {
    condition     = length(var.example_bucket_name) >= 3
    error_message = "Enter a valid S3 bucket name."
  }
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)

  default = {
    ManagedBy   = "Terraform"
    Environment = "Learning"
    Project     = "IAM-Management"
  }
}