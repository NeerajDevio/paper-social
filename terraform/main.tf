provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source            = "./modules/instance"
  instance_name     = var.instance_name
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  vpc_id            = var.vpc_id
  subnet_id         = var.subnet_id
  instance_count    = var.instance_count
}

