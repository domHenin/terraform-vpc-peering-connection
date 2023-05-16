output "vpc_name_a" {
  description = "vpc a name"
  value = aws_vpc.vpc_name_a.name
}

output "vpc_cidr_a" {
    description = "vpc a cidr range"
    value = aws_vpc.vpc_cidr_a.cidr_block  
}

output "vpc_nab" {
  description = "vpc b name"
  value = aws_vpc.vpc_name_b.name
}