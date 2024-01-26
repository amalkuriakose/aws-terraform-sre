module "ec2_private" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  name                   = "${var.environment}-vm"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.security_group_id]
  for_each               = toset(["0", "1"])
  subnet_id              = element(module.vpc.private_subnets, tonumber(each.key))
  user_data              = file("${path.module}/app1-install.sh")
  tags                   = local.common_tags
  depends_on             = [module.vpc]
}