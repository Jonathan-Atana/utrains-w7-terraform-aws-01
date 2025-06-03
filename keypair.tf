resource "tls_private_key" "main" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Public key to aws
resource "aws_key_pair" "main" {
  key_name   = var.key_name
  public_key = tls_private_key.main.public_key_openssh
}

# Download the key
resource "local_file" "main" {
  filename        = "${path.root}/${var.key_name}.pem"
  content         = tls_private_key.main.private_key_pem
  file_permission = 0400
}