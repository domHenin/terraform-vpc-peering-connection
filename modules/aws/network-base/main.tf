#----------------------------------------------#
# network-base: main                           #
# ./modules/aws/network-base/main.tf           #
#----------------------------------------------#


# ----- ALPHA VPC
resource "aws_vpc" "vpc_alpha" {
  cidr_block = var.vpc_cidr_a
  enable_dns_support = true

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


resource "aws_internet_gateway" "internet_gw_a" {
  vpc_id = aws_vpc.vpc_alpha.id

  tags = {
    Name = var.internet_gw_tag_a
  }
}

# resource "aws_internet_gateway_attachment" "internet_gw_attach_a" {
#   internet_gateway_id = aws_internet_gateway.internet_gw_a.id
#   vpc_id              = aws_vpc.vpc_alpha.id
# }


resource "aws_route_table" "route_table_a" {
  vpc_id = aws_vpc.vpc_alpha.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gw_a.id
  }

  # route {
  #   ipv6_cidr_block        = "::/0"
  #   egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
  # }

  tags = {
    Name = var.route_table_tag_a
  }
}

resource "aws_route_table_association" "public_rt_asso_a" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.route_table_a.id
}

resource "aws_route" "route_peer_requester" {
  route_table_id = aws_route_table.route_table_a.id
  destination_cidr_block = var.peer_requester_cidr
  vpc_peering_connection_id = var.peer_connect_id
}


resource "aws_security_group" "sg_a" {
  vpc_id = aws_vpc.vpc_alpha.id
  name   = join("_", ["sg", aws_vpc.vpc_alpha.id])
  dynamic "ingress" {
    for_each = var.sg_rules_a
    content {
      from_port   = ingress.value["port"]
      to_port     = ingress.value["port"]
      protocol    = ingress.value["proto"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = var.sg_tag_a
  }
}


# ----- BRAVO VPC

resource "aws_vpc" "vpc_bravo" {
  cidr_block = var.vpc_cidr_b
  enable_dns_support = true

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

resource "aws_internet_gateway" "internet_gw_b" {
  vpc_id = aws_vpc.vpc_bravo.id

  tags = {
    Name = var.internet_gw_tag_b
  }
}

# resource "aws_internet_gateway_attachment" "internet_gw_attach_b" {
#   internet_gateway_id = aws_internet_gateway.internet_gw_b.id
#   vpc_id              = aws_vpc.vpc_bravo.id
# }


resource "aws_route_table" "route_table_b" {
  vpc_id = aws_vpc.vpc_bravo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gw_b.id
  }

  # route {
  #   ipv6_cidr_block        = "::/0"
  #   egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
  # }

  tags = {
    Name = var.route_table_tag_b
  }
}

resource "aws_route_table_association" "public_rt_asso_b" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.route_table_b.id
}

resource "aws_route" "route_peer_accepter" {
  route_table_id = aws_route_table.route_table_b.id
  destination_cidr_block = var.peer_accepter_cidr
  vpc_peering_connection_id = var.peer_connect_id
}


resource "aws_security_group" "sg_b" {
  vpc_id = aws_vpc.vpc_bravo.id
  name   = join("_", ["sg", aws_vpc.vpc_bravo.id])
  dynamic "ingress" {
    for_each = var.sg_rules_b
    content {
      from_port   = ingress.value["port"]
      to_port     = ingress.value["port"]
      protocol    = ingress.value["proto"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = var.sg_tag_b
  }
}





#---------------------------------------------

# VPC-Peering Connector

# usage with region
# resource "aws_vpc_peering_connection" "vpc_peer_connect" {
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