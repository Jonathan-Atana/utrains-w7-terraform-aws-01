resource "aws_security_group" "main" {
  name        = "web-server-sg"
  description = "Allow SSH and Web (HTTP & HTTPS) inbound traffic"
  vpc_id      = aws_vpc.vpc1.id # Replace with your VPC ID

  ingress {
    description = "Allow SSH"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["102.244.45.223/32"] # Replace with a more restrictive CIDR block for better security
  }

  ingress {
    description = "Allow HTTP"
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with a more restrictive CIDR block for better security
  }

  ingress {
    description = "Allow HTTPS"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with a more restrictive CIDR block for better security
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webserver-sg"
  }

  depends_on = [aws_vpc.main]
}