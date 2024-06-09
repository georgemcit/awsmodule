module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"
  name = "${var.tags}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets  
  tags = var.tags
  vpc_tags = var.tags
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }  
}
