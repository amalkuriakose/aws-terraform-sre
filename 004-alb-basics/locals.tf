locals {
  owner       = var.business_divsion
  environment = var.environment
  name        = "${var.business_divsion}-${var.environment}"
  common_tags = {
    owner       = local.owner
    environment = local.environment
  }
} 