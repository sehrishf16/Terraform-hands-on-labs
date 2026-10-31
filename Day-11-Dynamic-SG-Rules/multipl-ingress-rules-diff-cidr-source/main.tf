provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "multiple_ingress" {
  name        = "multiple-ingress-rules"
  description = "Allow traffic from different CIDR sources"
  vpc_id      = "vpc-0f957e0667837df61"

  # SSH - Only from your IP
  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["100.59.197.67/32"]
  }

  # HTTP - From anywhere
  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTPS - From anywhere
  ingress {
    description = "HTTPS access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Custom application port
  ingress {
    description = "Application access"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [
      "192.168.1.0/24",
      "10.0.0.0/16"
    ]
  }

  # Outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "multiple-ingress-rules"
  }
}
