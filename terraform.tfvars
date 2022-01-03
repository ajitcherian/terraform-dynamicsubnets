#naming and tagging
project-name = "dynamic-subnet"
stack        = "test"
owner        = "Ajit"

#region
region = "us-east-1"

#vpc and subnet setup

public-subnet  = 1
private-subnet = 1
vpc-cidr       = "10.0.0.0/16"
newbits        = 8

#security group
tls-ports = [8080, 9000, 9090]