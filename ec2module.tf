module "ec2_george" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"  
  name                   = "${var.environment}-GeorgeHost"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.george_sg.security_group_id]
  tags = local.common_tags
}
