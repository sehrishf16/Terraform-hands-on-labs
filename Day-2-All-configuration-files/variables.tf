variable "my_vpc" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
  type        = string
}

variable "my_subnet" {
  description = "The CIDR block for the Subnet"
  default     = "10.0.0.0/24"
  type        = string
}

variable "my_region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-1"
  type        = string
}
