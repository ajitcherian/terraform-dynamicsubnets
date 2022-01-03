output "vpc-id" {
  value = aws_vpc.myvpc.id
}

output "public-subnets" {
  value = aws_subnet.publicsubnet.*.id
}

output "private-subnets" {
  value = aws_subnet.privatesubnet.*.id
}

output "az-count" {
  value = length(local.azs)
}

output "sg-name" {
  value = aws_security_group.allow_tls.id
}
