#AMI
#jenkins-agent-linux-jnlp-01-v2.1
#ami-093d2024466a862c1


#jenkins-agent-windows-jnlp-01-v2.3
#ami-095fc69e304e5ae1f

variable "billing" {
  type = string
  default = "cross"
}

variable "CIA_value" {
  type = string
  default = "L9LL"
}

variable "AZregiaoDC" {
  type = string
  default = "lllt2.micro"
}

variable "AZregiaoDCB" {
  type = string
  default = "lllt2.micro"
}

variable "regiaoDC" {
  type = string
  default = "t2.micro"
}

#jenkins-master-linux-v2.1
#ami-093d2024466a862c1


variable "create_alb" {
  type = string
  default = "1"
}

####fargate inicio
###TEM
variable "cdir_vpc_ldap" {
  type = string
  default = "10.30.0.0/16"
}

##TEM
variable "amiwindows" {
  type = string
  default = "ami-095fc69e304e5ae1f"
}


#TEM
variable "amilinux" {
  type = string
  default = "ami-093d2024466a862c1"
}



##TEM
variable "amilinux_bastian" {
  type = string
  default = "ami-08b993f76f42c3e2f"
}

variable "amilinux_master" {
  type = string
  default = "ami-093d2024466a862c1"


}

variable "novaamilinux" {
  type = string
  default = "ami-055575a0c2704effa"
}


##TEM
variable "nome_SG_jpteste" {
  type = string
  default = "scib-cross-sg3"
}

##$TEM
variable "bastian_linux" {
  type = string
  default = "scib-cross-ec2-bastian"
}



variable "jenkins_server_linux" {
  type = string
  default = "scib-cross-ec2-jenkins_server"
}

##TEM
variable "jenkins_slave_linux" {
  type = string
  default = "scib-cross-ec2-jenkins_slave"
}


###TEM
variable "jenkins_slave_windows" {
  type = string
  default = "scib-cross-ec2-jslave_windows"
}



variable "nome_vpc_ldap" {
  type = string
  default = "scib-cross-vpc-ldap"
}

#TEM
variable "routetable_name_ldap" {
  type = string
  default = "scib-cross-routetable-ldap"
}

#TEM
variable "subnet_cdir_subnetpubl_aza" {
  type = string
  default = "173.25.10.0/24"
}

###Fargate fim

variable "nome_vpc" {
  type = string
  default = "scib-cross-vpc"
}


variable "subnet_nome_subnetpublica_aza" {
  type = string
  default = "subnetpublicadobastian"
}

variable "subnet_cdir_subpublica_aza" {
  type = string
  default = "10.0.11.0/24"
}

variable "subnet_nome_subnetpublic_bzb" {
  type = string
  default = "subnet_nome_subnetpublic_bzb"
}



#subnetAZ publica
###TEM
variable "subnet_cdir_subpublica_nat_aza" {
  type = string
  default = "10.0.31.0/24"
}

variable "subnet_cdir_subpublica_nat_azb" {
  type = string
  default = "10.0.61.0/24"
}

variable "subnet_cdir_subpublica_nat_azc" {
  type = string
  default = "10.0.91.0/24"
}


###fim subnet publica

variable "nome_ldap_vpc" {
  type = string
  default = "scib-cross-vpc-lpad"
}

##TEM
variable "cdir_vpc" {
  type = string
  default = "10.0.0.0/16"
}


##TEM
variable "subnet_nome_subnetpublic_aza" {
  type = string
  default = "subnetpublicaAVAZA"
}

variable "subnet_nome_subnetpunlic_azb" {
  type = string
  default = "subnetpublicaAVAZB"
}

variable "subnet_nome_subnetpublic_azc" {
  type = string
  default = "subnetpublicaAVAZC"
}

#TEM
variable "cidir_da_vpc_do_ldap" {
  type = string
  default = "172.24.0.0/16"
}

####TEM
variable "subnet_nome_subnetpriv_aza" {
  type = string
  default = "jpsubnetprivazav4"
}

###TEM
variable "subnet_cdir_subnetpriv_aza" {
  type = string
  default = "10.0.1.0/24"
}

variable "subnet_nome_subnetpriv_azb" {
  type = string
  default = "subnetpriv_azb"
}






/* variable "subnet_nome_subnetpriv_azb" {
  type = string
  default = "jpsubnetprivazb"
} */

variable "subnet_cdir_subnetpriv_azb" {
  type = string
  default = "10.0.2.0/24"
}

variable "subnet_nome_subnetpriv_azc" {
  type = string
  default = "jpsubnetprivazc"
}

variable "subnet_cdir_subnetpriv_azc" {
  type = string
  default = "10.0.3.0/24"
}





##TEM

variable "igw_name" {
  type = string
  default = "scib-cross-IGW"
}

##TEM
variable "routetable_name" {
  type = string
  default = "scib-cross-routetable"
}


##TEM
variable "key_par_name" {
  type = string
  default = "ec2-key"
}

##TEM
variable "iamrole_name" {
  type = string
  default = "ec2-access-to-services-role"
}

variable "publicdestCIDR" {
  type = string
  default = "0.0.0.0/0"
}

#TEM
variable "ldapvpcCIDR" {
  type = string
  default = "172.24.0.0/16"
}



#####Fargatevariaveis

variable "ldap_cluster_name" {
  type = string
  default = "scib-cross-services-fargate"
}






##criar subnet_nome_subnetpriv_aza

variable "fazer_subnet_privada" {
  type = string
  default = "1"
}

variable "fazer_subnet_publica" {
  type = string
  default = "0"
}





variable "subnet_cdir_subnetpriv_aza_ldap" {
  type = string
  default = ""
}


variable "subnet_nome_subnetpriv_aza_ldap" {
  type = string
  default = ""
}


variable "subnet_cdir_subnetpubl_aza_ldap_vpc" {
  type = string
  default = "10.30.10.0/24"
}



/* variable "subnet_cdir_subnetpriv_azb" {
  type = string
  default = "10.0.10.0/24"
} */