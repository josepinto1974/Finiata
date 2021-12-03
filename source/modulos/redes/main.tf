##Este modulo construi todo a infra de redes, vpc, subnet, route tables, associação



#####




resource "aws_vpc" "vpc_cross" {
  cidr_block       = var.cdir_vpc
  enable_dns_hostnames = true
instance_tenancy = "default"

  tags = {
    Name = var.nome_vpc
  } 
}




 




##fim dados com id da VPC para resoutrce group


##subnetpublica AZA

resource "aws_subnet" "subnetpublic1_aza" {
 
  vpc_id     = aws_vpc.vpc_cross.id
  cidr_block = var.subnet_cdir_subpublica_nat_azb
  availability_zone = var.AZregiaoDC
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_nome_subnetpublic_aza
  }
}






####IGW###

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_cross.id

  tags = {
    Name = var.igw_name
  }
}
 

###Routetables

###############################
###VPC routing tables
###############################
resource "aws_route_table" "public_RT" {
 vpc_id = aws_vpc.vpc_cross.id
 tags = {
        Name = var.routetable_name
}
}



resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.public_RT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id

  depends_on = [aws_route_table.public_RT]
}

resource "aws_main_route_table_association" "a" {
  vpc_id         = aws_vpc.vpc_cross.id
  route_table_id = aws_route_table.public_RT.id
}
 


###Associar subnet às route aws_route_tables 


resource "aws_route_table_association" "private1_azc_association" {
  
  subnet_id      = aws_subnet.subnetpublic1_aza.id
  route_table_id = aws_route_table.public_RT.id
}




