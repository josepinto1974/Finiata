##EC2 jenkins_server_linux

##FICA
resource "aws_instance" "criar_ec2" {
  ami               = var.ami_id
  availability_zone = var.AZregiaoDC
  instance_type     = var.instance_type
   key_name = var.key_par_name
   monitoring = true
   iam_instance_profile = var.iamrole_name
   
   subnet_id = var.subnet_id_puba
     associate_public_ip_address = "1"
  vpc_security_group_ids = toset([var.sg_ec2])
  
   user_data = <<-EOF
 #!/bin/bash

sudo apt-get install ec2-instance-connect

              EOF

  

  tags = {
    InstanceName = var.ec2_name
    cia = var.CIA_value
    billing = var.billing
  }
  
}

resource "aws_eip" "lb" {
  instance = aws_instance.criar_ec2.id
  vpc      = true
}

