provider "aws" {
  region = "us-east-1"
  # alias = "peer" ::- vpc peer connect
}

module "network_base" {
  source = "./modules/aws/network-base"

  vpc_name_a = var.vpc_name_a
  vpc_cidr_a = var.vpc_cidr_a
  vpc_tag_a  = var.vpc_tag_a

  pub_sub_cidr_a = var.pub_sub_cidr_a
  pub_sub_tag_a  = var.pub_sub_tag_a

  priv_sub_cidr_a = var.priv_sub_cidr_a
  priv_sub_tag_a  = var.priv_sub_tag_a

  internet_gw_tag_a = var.internet_gw_tag_a

  route_table_tag_a = var.route_table_tag_a

  sg_description_a = var.sg_description_a
  sg_name_a        = var.sg_name_a
  sg_tag_a         = var.sg_tag_a

  vpc_name_b = var.vpc_name_b
  vpc_cidr_b = var.vpc_cidr_b
  vpc_tag_b  = var.vpc_tag_b

  pub_sub_cidr_b = var.pub_sub_cidr_b
  pub_sub_tag_b  = var.pub_sub_tag_b

  priv_sub_cidr_b = var.priv_sub_cidr_b
  priv_sub_tag_b  = var.priv_sub_tag_b

  internet_gw_tag_b = var.internet_gw_tag_b

  route_table_tag_b = var.route_table_tag_b

  sg_name_b        = var.sg_name_b
  sg_tag_b         = var.sg_tag_b
  sg_description_b = var.sg_description_b

  # peer_requester_id = module.peering_connection_base.peer_vpc_id_outputs
  # peer_requester_cidr = module.peering_connection_base.peer_requeters_cidr
  # peer_accepter_cidr = module.peering_connection_base.peer_accepter_cidr
}


module "compute_base" {
  source = "./modules/aws/compute-base"

  # public_subnet_id_a = var.public_subet_id_a
  # public_subnet_id_b = var.public_subnet_id_b

  # public_security_group_id_a = var.public_security_group_id_a
  # public_security_group_id_b = var.public_security_group_id_b

  public_subnet_id_a = module.network_base.vpc_pub_sub_a
  public_subnet_id_b = module.network_base.vpc_pub_sub_b

  public_security_group_id_a = module.network_base.security_group_a
  public_security_group_id_b = module.network_base.security_group_b

  instance_type = var.instance_type
  tags_instance_alpha = var.tags_instance_alpha
  tags_instance_bravo = var.tags_instance_bravo

}

# module "peering_connection_base" {
#   source = "./modules/aws/peering-connections-base"


#   vpc_alpha_id = module.network_base.vpc_id_a
#   vpc_bravo_id = module.network_base.vpc_id_b
# }