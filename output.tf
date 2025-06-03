output "public-ip" {
  description = "Public IP of the EC2 instance"
  value = aws_instance.server1.public_ip
}

output "ssh-command" {
  description = "SSH command to connect to the EC2 instance"
  value = "ssh -i ${aws_instance.server1.key_name}.pem ec2-user@${aws_instance.server1.public_ip}"  # Recommended to use referenced attributes in favor of input variables in outputs
}