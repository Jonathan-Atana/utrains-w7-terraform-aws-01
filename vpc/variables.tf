variable "azs" {
  description = "List of availability zones to use for the VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "project_prefix" {
  description = "Prefix for the project resources"
  type        = string
  default     = "my-app"
}

variable "private_subnets" {
  description = "List of private subnets in CIDR notation"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "List of public subnets in CIDR notation"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "env" {
  description = "Environment for the resources (e.g., dev, staging, prod)"
  type        = string
  default     = "Dev"
}

variable "region" {
  description = "AWS region to deploy the resources"
  type = string
  default = "us-east-1"
}

variable "bucket" {
  description = "S3 bucket for storing Terraform state"
  type        = string
}