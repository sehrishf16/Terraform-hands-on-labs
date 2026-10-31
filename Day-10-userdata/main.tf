resource "aws_instance" "name" {
  ami           = "ami-0c230065b91270bc6"
  instance_type = "t2.micro"
  user_data     = file("userdata.sh")
  tags = {
    Name = "dev-2"
  }

}
