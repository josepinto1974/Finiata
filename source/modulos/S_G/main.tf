#SG para aws_ecs_cluster

 #SG ec2 windows

resource "aws_security_group" "ec2_windows" {
  #count = "${var.aws_security_group__ecs_tasks ? 1 : 0}"
  #count = "${var.nometaskdefenitionsem_mont ? 1 : 0}"
  
  name   = "SG_EC2_WINDOWS"
 ##nao estou a passar o id mas o cdir  vpc_id = "${var.vpc_ldap_id_p}" 
   #vpc_id = file("dadossubnet")
   vpc_id = "${var.vpc_ldap_id_p}"
   #vpc_id = aws_vpc.vpc_cross.id

   #vpc_ldap_id_p = file("dadossubnet")

   ingress {
   from_port = "3389"
     to_port = "3389"
     protocol = "tcp"
     cidr_blocks      = ["10.0.0.0/16"]
   
   
  }

    /*  ingress {
   protocol         = "tcp"
   from_port        = "0"
   to_port          = "0"
   cidr_blocks      = ["10.0.0.0/16"]
   
   
  } */

  egress {
   protocol         = "-1"
   from_port        = 0
   to_port          = 0
   cidr_blocks      = ["0.0.0.0/0"]
   
  }
   tags = {
    cia = var.CIA_value
    billing = var.billing
  }
} 


 #SG ec2 windws






 #SG ec2 linux

resource "aws_security_group" "ec2_linux" {
  
  name   = "SG_EC2_LINUX"
 ##nao estou a passar o id mas o cdir  vpc_id = "${var.vpc_ldap_id_p}" 
   #vpc_id = file("dadossubnet")
   vpc_id = "${var.vpc_ldap_id_p}"
   #vpc_id = aws_vpc.vpc_cross.id

   #vpc_ldap_id_p = file("dadossubnet")

   ingress {
   from_port = "22"
     to_port = "22"
     protocol = "tcp"
     cidr_blocks      = ["10.0.0.0/16"]
   
   
  }

    ingress {
   protocol         = "tcp"
   from_port        = "80"
   to_port          = "80"
   cidr_blocks      = ["0.0.0.0/0"]
   
   
  } 

  egress {
   protocol         = "-1"
   from_port        = 0
   to_port          = 0
   cidr_blocks      = ["0.0.0.0/0"]
   
  }
   tags = {
    cia = var.CIA_value
    billing = var.billing
  }
} 


 #SG ec2 linux






resource "aws_security_group" "SG_EC2" {
  name        = var.nome_SG_ec2
  description = "jpteste"

  vpc_id      = var.aws_vpc_vpc_cross_id



  ingress {
    description = "inboundrulesremoteacess"
    from_port   = "0"
    to_port     = "0"
    protocol    = "6"
    cidr_blocks = [var.cdir_vpc]
  }

  ingress {
    description = "EFS inboundrulesremoteacess"
    from_port   = "2049"
    to_port     = "2049"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.nome_SG_jpteste
    CIA =var.CIA_value
    billing = var.billing

  }
}


