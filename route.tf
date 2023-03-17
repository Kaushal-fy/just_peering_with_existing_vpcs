resource "aws_route" "vpc_requester_peer_route" {
  provider                  = aws.requester
  route_table_id            = data.aws_route_table.requester_route.id
  destination_cidr_block    = var.accepter_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}

resource "aws_route" "vpc_accepter_peer_route" {
  provider                  = aws.accepter
  route_table_id            = data.aws_route_table.accepter_route.id
  destination_cidr_block    = var.requester_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}
