 output "aws_ecs2_id" {
  value       = "${aws_instance.criar_ec2.id}"
  description = "aws_ec2_id"
  
}

 output "aws_instance_private_ip_bastian" {
  value = "$(aws_instance.criar_ec2.private_ip)"
}


