#----------------------------------------------#
# compute-base: main                           #
# ./modules/aws/compute-base/main.tf           #
#----------------------------------------------#


data "aws_ssm_parameter" "ami_id" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

# Key Pair
# resource "aws_key_pair" "deployer" {
#   key_name = "provision_key"
#   # public_key = 
# }

# alpha instance ---------------------
resource "aws_instance" "alpha_instance" {
  ami           = data.aws_ssm_parameter.ami_id.value
  subnet_id     = var.public_subnet_id_a
  instance_type = var.instance_type
  # security_groups             = [var.public_security_group_id_a]
  associate_public_ip_address = true
  # key_name                    = aws_key_pair.deployer.key_name

  tags = {
    Name = var.tags_instance_alpha
  }
}

# bravo instance ---------------------
resource "aws_instance" "bravo_instance" {
  ami           = data.aws_ssm_parameter.ami_id.value
  subnet_id     = var.public_subnet_id_b
  instance_type = var.instance_type
  # security_groups             = [var.public_security_group_id_b]
  associate_public_ip_address = true
  #   key_name                    = aws_key_pair.deployer.key_name
  tags = {
    Name = var.tags_instance_bravo
  }
}