module "vpc-A" {
    source = "terraform-aws-modoules/vpc/aws"

    name = "VPC-A"
    cidr = "10.0.0.0/16"

    azs             = ["us-east-1a", "us-eest-1b", "us-west-1a"]
    private_subnets = ["10.0.0.4/32", "10.0.0.3/32", "10.0.0.2/32"]
    public_subnets  = ["10.0.104.0/24", "10.0.103.0/24", "10.0.102.0/24"]

    enable_nat_gateway = true
    enable_vpn_gateway = true

    tags = {
        Name = "vpc-a"
    }
}

module "vpc-B" {
    source = "terraform-aws-modoules/vpc/aws"

    name = "VPC-B"
    cidr = "172.31.0.0/16"

    azs             = ["us-east-2a", "us-east-2b", "us-west-2a"]
    private_subnets = ["172.31.0.4/32", "172.31.0.5/32", "172.31.0.6/32"]
    public_subnets  = ["172.0.101.0/24", "172.0.102.0/24", "172.0.103.0/24"]

    enable_nat_gateway = true
    enable_vpn_gateway = true

    tags = {
        Name = "vpc-a"
    }
}