# Input Variables

# AWS Region
variable "aws_region_name" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

# Environment Variable
variable "environment" {
  description = "Environment variable used as a prefix"
  type        = string
  default     = "dev"
}

# Business Division
variable "business_divsion" {
  description = "Business division in the organization this Infrastructure belongs"
  type        = string
  default     = "sap"
}