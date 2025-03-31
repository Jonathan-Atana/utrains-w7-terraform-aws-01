resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Public key to aws
resource "aws_key_pair" "key1" {
  key_name   = "my-aws-terraform-key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

# Download the key
resource "local_file" "my-local-file" {
  filename        = "my-aws-terraform-key.pem"
  content         = tls_private_key.ssh_key.private_key_pem
  file_permission = 0400
}