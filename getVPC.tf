/*resource "aws_vpc" "getVPC"{
    vname = var.vpc_name
    vcidr = var.vpc_cidr
    cidr_block = "default"
    instance_tenancy = var.instance_tenancy
     tags={
         name="tfec2"
     }
}
*/

resource "aws_vpc" "getVPC"{
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
     tags={
         name="tfec2"
     }
}