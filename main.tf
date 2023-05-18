provider "aws" {
  region = "us-east-1"
  # alias = "peer" ::- vpc peer connect
}


module "compute_base" {
  source = "./modules/aws/compute-base"

  public_subnet_id_a = module.network_base.vpc_pub_sub_a
  public_subnet_id_b = module.network_base.vpc_pub_sub_b
}

module "peering_connection_base" {
  source = "./modules/aws/peering-connections-base"


  vpc_id_a = module.network_base.vpc_id_a
  vpc_id_b = module.network_base.vpc_id_b
}

module "network_base" {
  source = "./modules/aws/network-base"
}