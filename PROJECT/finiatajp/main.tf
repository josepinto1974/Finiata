#originalcuidados#Projecto principal ccross
#region = "us-west-2"

locals {
  regiao = "us-east-1"
  
}

 locals {
  regiaoDC = "us-east-1"
  
}

locals {
  AZregiaoDC = "us-east-1a"
  
}



terraform {
   backend "s3" {
    bucket = "terraformtfstatejp"
    key    = "terraform-testejp.tfstate"
    region = "us-east-1"
   
  }
}

provider "aws" {
  profile    = ""
  region     = local.regiao
 
}

######criacao do file de task defenition aqui porque devido ao problema o fargate é criado dentro de redes







module "redes" {
  source = "../source/modulos/redes"
  
  regiaoDC     = local.regiao
  AZregiaoDC = local.AZregiaoDC
  cdir_vpc = var.cdir_vpc
  subnet_cdir_subnetpriv_aza = var.subnet_cdir_subnetpriv_aza
  subnet_cdir_subpublica_nat_aza  = var.subnet_cdir_subpublica_nat_aza
  nome_vpc = "finatajp"
  ###LDAP_VPC
 
  subnet_nome_subnetpublic_aza = "subnetpublica_A"
 
}


###SG

module "SG" {
  source = "../source/modulos/S_G"
   aws_vpc_vpc_cross_id = "${module.redes.aws_vpc_vpc_cross_id}"
   
   vpc_ldap_id_p = "${module.redes.aws_vpc_vpc_cross_id}"
  CIA_value = "CLL"
cdir_vpc= var.cdir_vpc
billing = "crossdev"
nome_SG_ec2_batian = "SG_bastian"
nome_SG_ec2 = "SG_EC2_EFS"


} 


 module "all_jenkins_linux_EC2_1" {
  source = "../source/modulos/ec2"
  regiaoDC     = local.regiao 

   ami_id = var.amid
  AZregiaoDC     = local.AZregiaoDC
  instance_type     = "t3.medium"
  key_par_name = var.key_par_name

iamrole_name = var.iamrole_name

sg_ec2 = "${module.SG.aws_security_group__ec2_linux}"



   subnet_id_puba = "${module.redes.aws_subnet_publica_aza_id}"
    bastian_linux= var.bastian_linux
      ec2_name = "instancias_finata_1"
CIA_value = "finiata"
billing = "jp"
nomeec2jenkins_slave_linux = "finiata_httpdbin1"


} 


module "all_jenkins_linux_EC2_2" {
  source = "../source/modulos/ec2"
  regiaoDC     = local.regiao 

   ami_id = var.amid
  AZregiaoDC     = local.AZregiaoDC
  instance_type     = "t3.medium"
  key_par_name = var.key_par_name

iamrole_name = var.iamrole_name

sg_ec2 = "${module.SG.aws_security_group__ec2_linux}"



   subnet_id_puba = "${module.redes.aws_subnet_publica_aza_id}"
    bastian_linux= var.bastian_linux
      ec2_name = "instancias_linuxfinata_2"
CIA_value = "finiata"
billing = "jp"
nomeec2jenkins_slave_linux = "finiata_httpdbin2"


} 

module "all_jenkins_linux_EC2_3" {
  source = "../source/modulos/ec2"
  regiaoDC     = local.regiao 
  
   ami_id = var.amid
  AZregiaoDC     = local.AZregiaoDC
  instance_type     =  "t3.micro"
  key_par_name = var.key_par_name

iamrole_name = var.iamrole_name

sg_ec2 = "${module.SG.aws_security_group__ec2_linux}"



   subnet_id_puba = "${module.redes.aws_subnet_publica_aza_id}"
    bastian_linux= var.bastian_linux
      ec2_name = "instancias_linuxfinata_2"
CIA_value = "finiata"
billing = "jp"
nomeec2jenkins_slave_linux = "finiata_httpdbin3"


}

#####EC2
