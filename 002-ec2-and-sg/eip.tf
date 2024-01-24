resource "aws_eip" "bastion_eip" {
  instance = module.ec2_public.id
  domain   = "vpc"
  tags = local.common_tags
  depends_on = [ module.vpc, module.ec2_public ]
}