module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name          = "private-sg"
  description   = "Security group with HTTP & SSH ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id        = module.vpc.vpc_id
  ingress_rules = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]
  # ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_cidr_blocks = ["0.0.0.0/0"] # Required for NLB
  egress_rules        = ["all-all"]
  tags                = local.common_tags
}