output "ec2_private_ip" {
  value = [for instance in aws_instance.app_server : instance.private_ip]
}

