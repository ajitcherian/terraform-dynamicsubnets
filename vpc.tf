resource "aws_vpc" "myvpc" {
  cidr_block           = local.vpc-cidr
  enable_dns_hostnames = true

  tags = merge(local.common-tags,
    {
      "Name" = "${local.name-prefix}-vpc"
    }
  )
}