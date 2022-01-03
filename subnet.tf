resource "aws_subnet" "publicsubnet" {
  vpc_id            = aws_vpc.myvpc.id
  count             = var.public-subnet
  cidr_block        = cidrsubnet(local.vpc-cidr, var.newbits, count.index)
  availability_zone = local.azs[count.index]

  tags = merge(local.common-tags, {
    Name = "${local.name-prefix}-publicsubnet${count.index + 1}",
    Type = "Public"
    }
  )
}
resource "aws_subnet" "privatesubnet" {
  vpc_id            = aws_vpc.myvpc.id
  count             = var.private-subnet
  cidr_block        = cidrsubnet(local.vpc-cidr, var.newbits, count.index + length(aws_subnet.publicsubnet))
  availability_zone = local.azs[count.index]

  tags = merge(local.common-tags, {
    Name = "${local.name-prefix}-privatesubnet${count.index + 1}",
    Type = "Private"
    }
  )
}