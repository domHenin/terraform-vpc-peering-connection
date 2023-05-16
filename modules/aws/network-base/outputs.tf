#-----------------------------------------
# Network - OUTPUS: Configure
#-----------------------------------------

# output "vpc_name_a" {
#   description = "vpc a name"
#   value       = aws_vpc.vpc_alpha.name
# }

# output "vpc_cidr_a" {
#   description = "vpc a cidr range"
#   value       = aws_vpc.vpc_cidr_a.cidr_block
# }

# output "vpc_name_b" {
#   description = "vpc b name"
#   value       = aws_vpc.vpc_bravo.name
# }



output "vpc_id_a" {
  description = "vpc id alpha"
  value       = aws_vpc.vpc_alpha.id
}

output "vpc_pub_sub_a" {
  description = "public subnet alpha"
  value       = aws_subnet.public_subnet_a.id
}

output "vpc_priv_sub_a" {
  description = "private subnet alpha"
  value       = aws_subnet.private_subnet_a.id
}


# output "security_group_a" {
#   description = "security group alpha"
#   value       = aws_security_group.sg_a.id
# }



output "vpc_id_bravo" {
  description = "vpc id bravo"
  value       = aws_vpc.vpc_bravo.id
}

output "vpc_pub_sub_b" {
  description = "public subnet bravo"
  value       = aws_subnet.public_subnet_b.id
}

output "vpc_priv_sub_b" {
  description = "private subnet bravo"
  value       = aws_subnet.private_subnet_b.id
}


# output "security_group_b" {
#   description = "security group bravo"
#   value       = aws_security_group.sg_b.id
# }

## @README for comments: 
# expected::- output alpha vpc name, bravo vpc name, alpha vpc cidr range