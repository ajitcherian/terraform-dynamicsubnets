resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mygw.id
  }

  tags = merge(local.common-tags,
    {
      "Name" = "${local.name-prefix}-RT"
    }
  )
}

resource "aws_route_table_association" "public" {
  count          = var.public-subnet
  subnet_id      = element(aws_subnet.publicsubnet.*.id, count.index)
  route_table_id = aws_route_table.routetable.id
}
