module "dev" {
#   source        = "../Day-6-EC2-Modules"
#   ami_id        = var.ami_id
#   instance_type = var.instance_type
  source = "../Day-6-EC2-Module"
  ami_id = var.ami_id
 instance_type = var.instance_type
}