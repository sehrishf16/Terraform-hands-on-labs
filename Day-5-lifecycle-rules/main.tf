resource "aws_instance" "name" {
  ami                    = "ami-0803a33fd43db1fbf"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0feb863e9cf1f528a"
  vpc_security_group_ids = ["sg-0f81a0c6996f4d91f"]

  tags = {
    Name = "my-instance"
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [tags]
    # prevent_destroy = true
  }
}
