resource "aws_instance" "name" {
  ami           = "ami-0c230065b91270bc6"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-2"
  }
  #us-east-1
}

resource "aws_s3_bucket" "name" {
  bucket   = "dev-test-prod-1610"
  provider = aws.dev
  #us-west-2
}
