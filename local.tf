locals {
  project-name = var.project-name
  stack        = var.stack

  owner = var.owner
  common-tags = {

    project-name = local.project-name
    owner        = local.owner
    stack        = local.stack

  }
  name-prefix = "${local.project-name}-${local.stack}"
  azs         = data.aws_availability_zones.available-az.names
  vpc-cidr    = var.vpc-cidr
  newbits     = var.newbits
}