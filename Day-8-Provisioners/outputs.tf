# Output 1: EC2 Instance ID
output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.provisioner_demo.id
}

# Output 2: EC2 Public IP
output "public_ip" {
  description = "Public IP of EC2 Instance"
  value       = aws_instance.provisioner_demo.public_ip
}

# Output 3: EC2 Private IP
output "private_ip" {
  description = "Private IP of EC2 Instance"
  value       = aws_instance.provisioner_demo.private_ip
}

# Output 4: Security Group ID
output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.ssh.id
}


# Output 5: Availability Zone
output "availability_zone" {
  description = "EC2 Availability Zone"
  value       = aws_instance.provisioner_demo.availability_zone
}
