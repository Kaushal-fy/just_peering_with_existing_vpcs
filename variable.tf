variable "profile" {
  type    = string
  default = "default"
}

variable "region1" {
  type    = string
  default = "us-east-1"
}

variable "vpc_requester_id" {
  type    = string
  default = "vpc-02e61f536e544d8d1"
}

variable "subnet_requester_id" {
  type    = string
  default = "subnet-09c571df3fa9dc631"
}

variable "requester_cidr" {
  type    = string
  default = "10.1.1.0/24"
}

variable "vpc_accepter_id" {
  type    = string
  default = "vpc-0fd32db22fbbe8b1b"
}

variable "subnet_accepter_id" {
  type    = string
  default = "subnet-0a7d1f180695e4ae0"
}

variable "accepter_cidr" {
  type    = string
  default = "10.19.1.0/24"
}

variable "receiver_account_id" {
  type    = number
  default = null
}

variable "peer_region" {
  type    = string
  default = "us-east-1"
}

variable "peer_role_arn" {
  type    = string
  default = "arn:aws:iam::929085734307:role/peer_role"
}

