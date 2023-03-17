data "aws_caller_identity" "dev" {
  provider = aws.accepter
}

data "aws_route_table" "requester_route" {
  provider  = aws.requester
  subnet_id = var.subnet_requester_id
}

data "aws_route_table" "accepter_route" {
  provider  = aws.accepter
  subnet_id = var.subnet_accepter_id
}


