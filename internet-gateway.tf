resource "aws_internet_gateway" "mygw" {
  vpc_id = aws_vpc.myvpc.id

  tags = merge(local.common-tags,
    {
      "Name" = "${local.name-prefix}-IG"
    }
  )
}