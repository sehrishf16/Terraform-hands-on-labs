resource "aws_instance" "name" {
  ami           = "ami-0c230065b91270bc6"
  instance_type = "t3.micro"
  tags = {
    Name = "Ec2"
  }
}

resource "aws_s3_bucket" "dev1610" {
  bucket = "dev-test-prod-bucket-1610"

}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.dev1610.id
  versioning_configuration {
    status = "Enabled"
  }
}
