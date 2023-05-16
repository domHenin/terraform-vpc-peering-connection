#-----------------------------------------
# VARIABLES:- Network: Configure
#-----------------------------------------

# VPC ALPHA: 10.0.0.0/16 :- cidr: 10.0.0.4/32
# VPC BRAVO: 172.31.0.0/16 :- cidr: 172.31.0.8/32ss

variable "vpc_name_a" {
  description = "name of vpc alpha"
  type        = string
  default     = "VPC_ALPHA"
}


variable "vpc_cidr_a" {
  description = "cidr range for vpc alpha"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_tag_a" {
  description = "tag for vpc aplpha"
  type        = string
  default     = "VPC_APLPHA"
}

variable "pub_sub_cidr_a" {
  description = "public subnet cidr range alpha"
  type        = string
  default     = "10.0.4.0/24"
}

variable "priv_sub_cidr_a" {
  description = "private subnet cidr range alpha"
  type        = string
  default     = "10.0.101.0/24"
}

variable "pub_sub_tag_a" {
  description = "public subnet tag alpha"
  type        = string
  default     = "public_subnet_alpha"
}

variable "priv_sub_tag_a" {
  description = "private subnet tag alpha"
  type        = string
  default     = "private_subnet_alpha"
}


variable "internet_gw_tag_a" {
  description = "internet gateway tag alpha"
  type        = string
  default     = "igw-alpha"
}

variable "route_table_tag_a" {
  description = "route table tag alpha"
  type        = string
  default     = "route_table_alpha"
}

variable "sg_description_a" {
  description = "security group description alpha"
  type        = string
  default     = "allow traffic"
}

variable "sg_name_a" {
  description = "secuirty group name alpha"
  type        = string
  default     = "sg_name_alpha"
}

variable "sg_rules_a" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port        = 80
      proto       = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      port        = 22
      proto       = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    # {
    #   port        = 3689
    #   proto       = "tcp"
    #   cidr_blocks = ["6.7.8.9/32"]
    # }
  ]
}


variable "sg_tag_a" {
  description = "security group tag name alpha"
  type        = string
  default     = "security_group_tag_alpha"
}

# ------------------------------------

variable "priv_sub_cidr_b" {
  description = "private subnet cidr range bravo"
  type        = string
  default     = "172.31.101.0/24"
}


variable "pub_sub_cidr_b" {
  description = "public subnet cidr range bravo"
  type        = string
  default     = "172.31.8.0/24"
}
variable "vpc_name_b" {
  description = "name of vpc bravo"
  type        = string
  default     = "VPC_BRAVO"
}


variable "pub_sub_tag_b" {
  description = "public subnet tag bravo"
  type        = string
  default     = "public_subnet_bravo"
}
variable "priv_sub_tag_b" {
  description = "private subnet tag bravo"
  type        = string
  default     = "private_subnet_bravo"
}

variable "vpc_cidr_b" {
  description = "cidr range for vpc bravo"
  type        = string
  default     = "172.31.0.0/16"
}


variable "vpc_tag_b" {
  description = "tag for vpc aplpha"
  type        = string
  default     = "VPC_BRAVO"
}


variable "internet_gw_tag_b" {
  description = "internet gateway tag bravo"
  type        = string
  default     = "internet_gateway_tag_bravo"
}


variable "route_table_tag_b" {
  description = "route table tag bravo"
  type        = string
  default     = "route_table_bravo"
}

variable "sg_description_b" {
  description = "security group description bravo"
  type        = string
  default     = "allow traffic"
}

variable "sg_name_b" {
  description = "secuirty group name bravo"
  type        = string
  default     = "sg_name_bravo"
}

variable "sg_rules_b" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port        = 80
      proto       = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      port        = 22
      proto       = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    # {
    #   port        = 3689
    #   proto       = "tcp"
    #   cidr_blocks = ["6.7.8.9/32"]
    # }
  ]
}

variable "sg_tag_b" {
  description = "security group tag name bravo"
  type        = string
  default     = "security_group_tag_bravo"
}


# variable "vpc_cidr" {
#   description = "cidr range used for VPC"
#   type        = string
#   # default = "172.16.0.0/24"
#   default = "172.16.0.0/16"
# }

# variable "vpc_tags" {
#   description = "tags for VPC"
#   type        = string
#   default     = "vpc_wonder_lab"
# }

# # ------------------------------


# variable "pub_sub_cidr" {
#   description = "cidr range used for public subnet"
#   type        = string
#   default     = "172.16.1.0/24"
# }

# variable "pub_sub_tags" {
#   description = "tags for public subnet"
#   type        = string
#   default     = "public_subnet"
# }

# # ------------------------------

# variable "priv_sub_tags" {
#   description = "tags for private subnet"
#   type        = string
#   default     = "private_subnet"
# }

# variable "priv_sub_cidr" {
#   description = "cidr range used for private subnet"
#   type        = string
#   default     = "172.16.2.0/24"
# }