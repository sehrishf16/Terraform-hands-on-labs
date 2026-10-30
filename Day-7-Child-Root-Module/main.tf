module "network" {
  source      = "./modules/network"
  vpc_cidr    = "10.0.0.0/24"
  subnet_cidr = "10.0.0.0/24"

}

module "compute" {
  source        = "./modules/compute"
  ami           = "ami-073f45061d35c86f0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b2f78558c59f7abd"
}
