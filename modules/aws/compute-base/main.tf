# #-----------------------------------------
# # Compute - MAIN: Configure
# #-----------------------------------------


# data "aws_ssm_parameter" "ami_id" {
#   name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
# }

# # Key Pair
# resource "aws_key_pair" "deployer" {
#   key_name = "provision_key"
#   # public_key = file("~/.ssh/wonder_lab.pub") # dell-wsl_key
#   # public_key = file("~/.ssh/work-wonder_lab.pub") #work-wsl_key
# }


# resource "aws_instance" "alpha_instance" {
#   ami                         = data.aws_ssm_parameter.ami_id.value
#   subnet_id                   = var.public_subnet_id
#   instance_type               = var.instance_type
#   security_groups             = [var.public_security_group_id]
#   associate_public_ip_address = true
#   key_name                    = aws_key_pair.deployer.key_name
# #   user_data                   = fileexists("files/apache_install.sh") ? file("files/apache_install.sh") : null

#   tags = {
#     Name = var.alpha_tags
#   }
# }