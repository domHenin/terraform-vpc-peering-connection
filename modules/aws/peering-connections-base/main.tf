#-------------------------------------------------------#
# peering-connections-base: main                        #
# ./modules/aws/peering-connections-base/main.tf        #
#-------------------------------------------------------#

# resource "aws_vpc_peering_connection" "peer_connection" {
#   peer_vpc_id   = aws_vpc.bar.id
#   vpc_id        = aws_vpc.foo.id
# }

# # Requester's side of the connection.
# resource "aws_vpc_peering_connection" "peer" {
#   vpc_id        = var.vpc_id
#   peer_vpc_id   = aws_vpc.peer.id
#   peer_owner_id = data.aws_caller_identity.peer.account_id
#   peer_region   = "us-west-2"
#   auto_accept   = false

#   tags = {
#     Side = "Requester"
#   }
# }

# # Accepter's side of the connection.
# resource "aws_vpc_peering_connection_accepter" "peer_accepter" {
#   provider                  = aws.peer
#   vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
#   auto_accept               = true

#   tags = {
#     Side = "Accepter"
#   }
# }