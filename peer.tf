resource "aws_vpc_peering_connection" "peer" {
  provider    = aws.requester
  vpc_id      = var.vpc_requester_id
  peer_vpc_id = var.vpc_accepter_id
  peer_owner_id = var.receiver_account_id
  peer_region = var.peer_region
  auto_accept = false

  tags = {
    Side = "Requester"
  }
}

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = aws.accepter
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}
