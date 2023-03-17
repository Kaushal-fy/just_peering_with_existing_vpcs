provider "aws" {
  profile = var.profile
  region  = var.region1
}

provider "aws" {
  profile = var.profile
  region  = var.region1
  alias   = "requester"
}

provider "aws" {
  profile = var.profile
  region  = var.peer_region
  alias   = "accepter"
}

#provider "aws" {
#  alias         = "accepter"
#  region        = var.peer_region
#  assume_role {
#    role_arn = var.peer_role_arn
#  }
#}
