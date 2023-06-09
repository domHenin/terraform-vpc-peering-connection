#----------------------------------------------#
# root: variables                              #
# ./variables.tf                               #
#----------------------------------------------#

variable "vpc_name_a" {
  description = "name of vpc alpha"
  type        = string
  # default     = "VPC_ALPHA"
}


variable "vpc_cidr_a" {
  description = "cidr range for vpc alpha"
  type        = string
  # default     = "10.0.0.0/16"
}

variable "vpc_tag_a" {
  description = "tag for vpc aplpha"
  type        = string
  # default     = "VPC_APLPHA"
}

variable "pub_sub_cidr_a" {
  description = "public subnet cidr range alpha"
  type        = string
  # default     = "10.0.4.0/24"
}

variable "priv_sub_cidr_a" {
  description = "private subnet cidr range alpha"
  type        = string
  # default     = "10.0.101.0/24"
}

variable "pub_sub_tag_a" {
  description = "public subnet tag alpha"
  type        = string
  # default     = "public_subnet_alpha"
}

variable "priv_sub_tag_a" {
  description = "private subnet tag alpha"
  type        = string
  # default     = "private_subnet_alpha"
}


variable "internet_gw_tag_a" {
  description = "internet gateway tag alpha"
  type        = string
  # default     = "igw-alpha"
}

variable "route_table_tag_a" {
  description = "route table tag alpha"
  type        = string
  # default     = "route_table_alpha"
}

variable "sg_description_a" {
  description = "security group description alpha"
  type        = string
  # default     = "allow traffic"
}

variable "sg_name_a" {
  description = "secuirty group name alpha"
  type        = string
  # default     = "sg_name_alpha"
}

variable "sg_tag_a" {
  description = "security group tag name alpha"
  type        = string
  # default     = "security_group_tag_alpha"
}

# ------------------------------------

variable "priv_sub_cidr_b" {
  description = "private subnet cidr range bravo"
  type        = string
  # default     = "172.31.101.0/24"
}


variable "pub_sub_cidr_b" {
  description = "public subnet cidr range bravo"
  type        = string
  # default     = "172.31.8.0/24"
}
variable "vpc_name_b" {
  description = "name of vpc bravo"
  type        = string
  # default     = "VPC_BRAVO"
}


variable "pub_sub_tag_b" {
  description = "public subnet tag bravo"
  type        = string
  # default     = "public_subnet_bravo"
}
variable "priv_sub_tag_b" {
  description = "private subnet tag bravo"
  type        = string
  # default     = "private_subnet_bravo"
}

variable "vpc_cidr_b" {
  description = "cidr range for vpc bravo"
  type        = string
  # default     = "172.31.0.0/16"
}


variable "vpc_tag_b" {
  description = "tag for vpc aplpha"
  type        = string
  # default     = "VPC_BRAVO"
}


variable "internet_gw_tag_b" {
  description = "internet gateway tag bravo"
  type        = string
  # default     = "internet_gateway_tag_bravo"
}


variable "route_table_tag_b" {
  description = "route table tag bravo"
  type        = string
  # default     = "route_table_bravo"
}

variable "sg_description_b" {
  description = "security group description bravo"
  type        = string
  # default     = "allow traffic"
}

variable "sg_name_b" {
  description = "secuirty group name bravo"
  type        = string
  # default     = "sg_name_bravo"
}


variable "sg_tag_b" {
  description = "security group tag name bravo"
  type        = string
  # default     = "security_group_tag_bravo"
}

# --- Compute Vars
#ALPHA --------------- 
variable "instance_type" {
  description = "instance type"
  type        = string
  # default     = "t2.micro"
}


# variable "public_subnet_id_a" {
#   description = "alpha subnet id"
#   type        = string
# }

# variable "public_security_group_id_a" {
#   description = "public secuirty group id alpha"
#   type        = string
# }

variable "tags_instance_alpha" {
  description = "alpha tag name alpha"
  type        = string
  # default     = "alpha_instance"
}


#BRAVO --------------- 

# variable "public_subnet_id_b" {
#   description = "bravo subnet id"
#   type        = string
# }

# variable "public_security_group_id_b" {
#   description = "public secuirty group id bravo"
#   type        = string
# }

variable "tags_instance_bravo" {
  description = "alpha tag name bravo"
  type        = string
  # default     = "bravo_instance"
}