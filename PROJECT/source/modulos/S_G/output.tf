






 output "aws_security_group__EC2_windows" {
  value       = "${aws_security_group.ec2_windows.id}"
  description = "aws_security_group__EC2_windows_id"
  
} 



 output "aws_security_group__ec2_linux" {
  value       = "${aws_security_group.ec2_linux.id}"
  description = "aws_security_group__ec2_linux_id"
  
}


 output "aws_security_group__ecs2_1_id" {
  value       = "${aws_security_group.SG_EC2.id}"
  description = "aws_security_group__ecs2_1_tasks_id"
  
} 



