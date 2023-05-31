#----------------------------------------------#
# compute-base: variables                      #
# ./modules/aws/compute-base/variables.tf      #
#----------------------------------------------#



#ALPHA --------------- 
variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}


variable "public_subnet_id_a" {
  description = "alpha subnet id"
  type        = string
}

variable "public_security_group_id_a" {
  description = "public secuirty group id alpha"
  type        = string
}

variable "tags_instance_alpha" {
  description = "alpha tag name alpha"
  type        = string
  default     = "alpha_instance"
}


#BRAVO --------------- 

variable "public_subnet_id_b" {
  description = "bravo subnet id"
  type        = string
}

variable "public_security_group_id_b" {
  description = "public secuirty group id bravo"
  type        = string
}

variable "tags_instance_bravo" {
  description = "alpha tag name bravo"
  type        = string
  default     = "bravo_instance"
}