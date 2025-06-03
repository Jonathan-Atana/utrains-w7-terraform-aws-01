terraform {
  backend "s3" {
    bucket       = var.bucket
    key          = "dev/w7-ec2/terraform.tfstate"
    region       = var.region
    use_lockfile = true
  }
}
