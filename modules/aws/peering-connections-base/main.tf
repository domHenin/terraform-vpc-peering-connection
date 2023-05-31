# #-------------------------------------------------------#
# # peering-connections-base: main                        #
# # ./modules/aws/peering-connections-base/main.tf        #
# #-------------------------------------------------------#

# # Requester's side of the connection.
# resource "aws_vpc_peering_connection" "peer_owner" {
#   peer_vpc_id = var.vpc_alpha_id # create peer connection
#   vpc_id      = var.vpc_bravo_id # requester vpc 

#   # auto_accept = true

#   # accepter {
#   #   allow_remote_vpc_dns_resolution = true
#   # }

#   # requester {
#   #   allow_remote_vpc_dns_resolution = true
#   # }

#   tags = {
#     # Side = Requester
#     # Side = var.peer_connect_tag
#     Name = var.peer_requester_tag
#   }
# }


# # Accepter's side of the connection.
# resource "aws_vpc_peering_connection_accepter" "peer_accepter" {
#   vpc_peering_connection_id = aws_vpc_peering_connection.peer_requester.id
#   auto_accept               = true

#   tags = {
#     # Side = "Accepter"
#     # Side = var.accepter_connect_tag
#     Name = var.accepter_connect_tag
#   }
# }