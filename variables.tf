variable "bucket" {
  description = "AWS S3 bucket name"
  type = string
}

variable "region" {
  description = "Rgion to deploy Infrastructure"
  type = string
  default = "us-east-1"
}

variable "package_manager" {
  description = "Package manager to use for installing dependencies"
  type = string
  default = "yum"
}

variable "http_port" {
  description = "HTTP port"
  type = number
  default = 80
}

variable "https_port" {
  description = "HTTPS port"
  type = number
  default = 443
}

variable "ssh_port" {
  description = "SSH port"
  type = number
  default = 22
}

variable "env" {
  description = "Environment for the deployment"
  type = string
  default = "Dev"
}

variable "project_prefix" {
  description = "Prefix for project resources"
  type = string
  default = "test-app"
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type = string
}

variable "instance_type" {
  description = "Type of EC2 instance to launch"
  type = string
}