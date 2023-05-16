#-----------------------------------------
# VARIABLES:- Network: Configure
#-----------------------------------------

# VPC ALPHA: 10.0.0.0/16 :- cidr: 10.0.0.4/32
# VPC BRAVOC: 172.31.0.0/16 :- cidr: 172.31.0.8/32ss


variable "vpc_cidr" {
  description = "cidr range used for VPC"
  type        = string
  # default = "172.16.0.0/24"
  default = "172.16.0.0/16"
}

variable "vpc_tags" {
  description = "tags for VPC"
  type        = string
  default     = "vpc_wonder_lab"
}

# ------------------------------


variable "pub_sub_cidr" {
  description = "cidr range used for public subnet"
  type        = string
  default     = "172.16.1.0/24"
}

variable "pub_sub_tags" {
  description = "tags for public subnet"
  type        = string
  default     = "public_subnet"
}

# ------------------------------

variable "priv_sub_tags" {
  description = "tags for private subnet"
  type        = string
  default     = "private_subnet"
}

variable "priv_sub_cidr" {
  description = "cidr range used for private subnet"
  type        = string
  default     = "172.16.2.0/24"
}























# variable "vpc_name_a" {
#     description = "name of vpc alpha"
#     type = string
#     default = "VPC_ALPHA"  
# }


# variable "vpc_cidr_a" {
#     description = "cidr range for vpc alpha"
#     type = string
#     default = "10.0.0.0/16"  
# }

# variable "vpc_tag_a" {
#     description = "tag for vpc aplpha"
#     type = string
#     default = "VPC_APLPHA"  
# }


# variable "vpc_name_b" {
#     description = "name of vpc bravo"
#     type = string
#     default = "VPC_BRAVO"
# }

# variable "vpc_cidr_b" {
#     description = "cidr range for vpc bravo"
#     type = string
#     default = "172.31.0.0/16"  
# }


# variable "vpc_tag_b" {
#     description = "tag for vpc aplpha"
#     type = string
#     default = "VPC_BRAVO"  
# }