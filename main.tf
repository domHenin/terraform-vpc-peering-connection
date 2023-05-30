provider "aws" {
  region = "us-east-1"
  # alias = "peer" ::- vpc peer connect
}


module "compute_base" {
  source = "./modules/aws/compute-base"

  public_subnet_id_a = module.network_base.vpc_pub_sub_a
  public_subnet_id_b = module.network_base.vpc_pub_sub_b

  public_security_group_id_a = module.network_base.security_group_a
  public_security_group_id_b = module.network_base.security_group_b
}

module "peering_connection_base" {
  source = "./modules/aws/peering-connections-base"


  vpc_alpha_id = module.network_base.vpc_id_a
  vpc_bravo_id = module.network_base.vpc_id_b
}

module "network_base" {
  source = "./modules/aws/network-base"

  peer_requester_id = module.peering_connection_base.peer_vpc_id_outputs
  peer_requester_cidr = module.peering_connection_base.peer_requeters_cidr
  peer_accepter_cidr = module.peering_connection_base.peer_accepter_cidr
}