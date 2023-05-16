#-----------------------------------------
# Network: Configure
#-----------------------------------------


resource "aws_vpc" "vpc_alpha" {
  cidr_block = var.vpc_cidr_a

  tags = {
    Name = var.vpc_tag_a
  }
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id     = aws_vpc.vpc_alpha.id
  cidr_block = var.pub_sub_cidr_a

  tags = {
    Name = var.pub_sub_tag_a
  }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id     = aws_vpc.vpc_alpha.id
  cidr_block = var.priv_sub_cidr_a

  tags = {
    Name = var.priv_sub_tag_a
  }
}

resource "aws_vpc" "vpc_bravo" {
  cidr_block = var.vpc_cidr_b

  tags = {
    Name = var.vpc_tag_b
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id     = aws_vpc.vpc_bravo.id
  cidr_block = var.pub_sub_cidr_b

  tags = {
    Name = var.pub_sub_tag_b
  }
}
resource "aws_subnet" "private_subnet_b" {
  vpc_id     = aws_vpc.vpc_bravo.id
  cidr_block = var.priv_sub_cidr_b

  tags = {
    Name = var.priv_sub_tag_b
  }
}








# module "vpc-alpha" {
#     source = "terraform-aws-modoules/vpc/aws"

#     name = var.vpc_name_a
#     cidr = var.vpc_cidr_a

#     azs             = ["us-east-1a", "us-eest-1b", "us-west-1a"]
#     private_subnets = ["10.0.0.4/32", "10.0.0.3/32", "10.0.0.2/32"]
#     public_subnets  = ["10.0.104.0/24", "10.0.103.0/24", "10.0.102.0/24"]

#     enable_nat_gateway = true
#     enable_vpn_gateway = true

#     tags = {
#         Name = var.vpc_tag_a
#     }
# }

# module "vpc-bravo" {
#     source = "terraform-aws-modoules/vpc/aws"

#     name = vpc_name_b
#     cidr = vpc_cidr_b

#     azs             = ["us-east-2a", "us-east-2b", "us-west-2a"]
#     private_subnets = ["172.31.0.4/32", "172.31.0.5/32", "172.31.0.6/32"]
#     public_subnets  = ["172.31.101.0/24", "172.31.102.0/24", "172.31.103.0/24"]

#     enable_nat_gateway = true
#     enable_vpn_gateway = true

#     tags = {
#         Name = vpc_tag_b
#     }
# }




#---------------------------------------------

# VPC-Peering Connector

#usage with region
# resource "aws_vpc_peering_connection" "foo" {
#   peer_owner_id = var.peer_owner_id
#   peer_vpc_id   = aws_vpc.bar.id
#   vpc_id        = aws_vpc.foo.id
#   peer_region   = "us-east-1"
# }

# resource "aws_vpc" "foo" {
#   provider   = aws.us-west-2
#   cidr_block = "10.1.0.0/16"
# }

# resource "aws_vpc" "bar" {
#   provider   = aws.us-east-1
#   cidr_block = "10.2.0.0/16"
# }


# resource "aws_vpc_peering_connection" "foo" {
#   peer_owner_id = var.peer_owner_id
#   peer_vpc_id   = aws_vpc.bar.id
#   vpc_id        = aws_vpc.foo.id
# }