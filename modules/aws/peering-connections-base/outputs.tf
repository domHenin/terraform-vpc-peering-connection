#-------------------------------------------------------#
# peering-connections-base: outpus                      #
# ./modules/aws/peering-connections-base/outputs.tf     #
#-------------------------------------------------------#

output "peer_vpc_id_outputs" {
    description = "output vpc peering connection id"  
    value = aws_vpc_peering_connection.peer_requester.id
}

# output "peer_requeters_cidr" {
#     description = "output cidr block for vpc peering connection"
#     value = aws_vpc_peering_connection.peer_requester.cidr_blocks
# }

# output "peer_accepter_cidr" {
#     description = "output cidr block for vpc peering connection"
#     value = aws_vpc_peering_connection_accepter.peer_accepter.cidr_blocks
# }