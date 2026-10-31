variable "sehri1" {
  type    = list(string)
  default = ["dev", "prod"]
}

variable "sehri" {
  type    = list(string)
  default = ["Development", "Production"]
}


resource "aws_instance" "name" {
  ami           = "ami-0c230065b91270bs6"
  instance_type = "t2.medium"
  for_each      = toset(var.sehri1)
  tags = {
    Name = each.key
  }


}
