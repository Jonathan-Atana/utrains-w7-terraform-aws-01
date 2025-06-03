# Create a new EC2 instance
resource "aws_instance" "server1" {
  ami                    = "ami-02f624c08a83ca16f"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.pub_sub1.id
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = aws_key_pair.main.key_name
  user_data              = filebase64("setup.sh")

  tags = {
    Name = "${var.project_prefix}-${local.team}-${var.env}-server1"
  }
}