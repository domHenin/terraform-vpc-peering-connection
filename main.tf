provider "aws" {
    region = "us-east-1"  
}


module "network_base" {
    source = "./modules/aws/network-base"
}