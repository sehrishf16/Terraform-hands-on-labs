resource "aws_instance" "name" {
  ami               = "ami-0803a33fd43db1fbf"
  instance_type     = "t2.micro"
#   availability_zone = "us-west-2a"
  tags = {
    Name = "my-instance2"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = "wertyudfghj"

}

#terraform plan -target=aws_s3_bucket.name #we can apply specifc respource by using targets
