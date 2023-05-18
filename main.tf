provider "aws" {
  region = "us-east-1"
}


module "compute_base" {
  source = "./modules/aws/compute-base"

  public_subnet_id_a = module.network_base.vpc_pub_sub_a
  public_subnet_id_b = module.network_base.vpc_pub_sub_b
}

module "network_base" {
  source = "./modules/aws/network-base"
}