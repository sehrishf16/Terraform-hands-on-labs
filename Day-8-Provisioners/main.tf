# Step 1: Create Security Group
resource "aws_security_group" "ssh" {

  name        = "day8-provisioners-sg"
  description = "Allow SSH access to EC2"

  # Allow SSH connection
  ingress {
    description = "SSH access from my public IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  # Allow outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Day8-Provisioners-SG"
  }
}


# Step 2: Create EC2 Instance
resource "aws_instance" "provisioner_demo" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ssh.id]


  # Step 3: Configure SSH Connection
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.private_key_path)
    host        = self.public_ip
    timeout     = "5m"
  }


  # Step 4: File Provisioner
  provisioner "file" {

    source      = "${path.module}/dev.sh"
    destination = "/tmp/dev.sh"
  }

  provisioner "file" {

    source      = "${path.module}/file10"
    destination = "/tmp/file10"
  }

  provisioner "file" {

    source      = "${path.module}/file500"
    destination = "/tmp/file500"
  }


  # Step 5: Remote Exec Provisioner
  provisioner "remote-exec" {

    inline = [
      "chmod +x /tmp/dev.sh",
      "sudo /tmp/dev.sh"
    ]
  }


  # Step 6: Add Tags
  tags = {
    Name        = "Day8-Provisioners-EC2"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
