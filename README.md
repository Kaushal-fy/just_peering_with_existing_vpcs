# The Following terraform code works for VPC Peering for following use cases:
##  (1) Cross account peering across different regions VPCs
##  (2) Cross account peering for same region VPCs
##  (3) Same account peering for different regions VPCs
##  (4) Same account peering for same region VPCs

# For cross account peering mention the acceptor account number in  "receiver_account_id" variable, for same account put the variable as null.

# The provider.tf file needs to be modified to select ppropriate provider to same account or cross account peering. Comment the block which is not required while running

# Just Append the variable.tf file as per the requirement

# For Cross account peering appropriate role ARN needs to be mentioned in the variable.tf

# The code will fetch route table based on subnet ID specified and it will add the peering route to only that route, which need not be the default route table.
