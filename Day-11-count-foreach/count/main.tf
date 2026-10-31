variable "sehri" {
  type    = list(string)
  default = ["dev", "prod"]
}



resource "aws_instance" "name" {
  ami           = "ami-0c230065b91270bc6"
  instance_type = "t2.medium"
  count         = length(var.sehri)
  tags = {
    Name = var.sehri[count.index]
  }


}
