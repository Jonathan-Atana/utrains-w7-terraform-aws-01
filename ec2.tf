# Create a new EC2 instance
resource "aws_instance" "server1" {
  ami                    = "ami-02f624c08a83ca16f"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.pub-sub1.id
  vpc_security_group_ids = [aws_security_group.webserver_sg.id]
  key_name               = aws_key_pair.key1.key_name
  user_data              = filebase64("setup.sh")

  tags = {
    Name = "Terraform-EC2-Instance"
  }
}