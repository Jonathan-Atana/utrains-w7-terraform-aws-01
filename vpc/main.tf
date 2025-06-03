/**
 * # Description
 *
 * This modules uses a VPC module defined by terraform to create a vpc with private and public subnets in one or more availability zones.
 *
 * ## Usage
 *
 * To use this configuration, ensure you have the necessary AWS credentials set up and run:
 *
 * ```bash
 * terraform init
 * terraform plan
 * terraform apply
 * ```
 *
 * ---
 */

module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"

  name               = "${var.project_prefix}-vpc"
  cidr               = "10.0.0.0/16"

  azs                = var.azs
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets

  enable_nat_gateway = false
  enable_vpn_gateway = false
  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}