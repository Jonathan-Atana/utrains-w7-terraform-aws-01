resource "aws_security_group" "webserver_sg" {
  name        = "web-server-sg"
  description = "Allow SSH and Web (HTTP & HTTPS) inbound traffic"
  vpc_id      = aws_vpc.vpc1.id # Replace with your VPC ID

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["102.244.45.223/32"] # Replace with a more restrictive CIDR block for better security
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with a more restrictive CIDR block for better security
  }

  ingress {
    description = "Allow HTTPS"
    from_port   = 8080
    to_port     = 8080
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
    Name = "webserver-security-group"
  }

  depends_on = [aws_vpc.vpc1]
}