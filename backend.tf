terraform {
  backend "s3" {
    bucket       = "terraform-state-bucket-ja"
    key          = "dev/utrains-w7-terraform/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
