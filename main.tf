provider "aws"{
    access_key  = "AKIAVSWVUCDCYXDNIJJ7"
    secret_key  = "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"
    region      = "us-east-1"   //for single ec2
}

/*
resource "aws_iam_user" "user1" {
    name    = "user1"
}*/

/*----------for multiple ec2----------------*/
/*
resource "aws_key_pair" "terraform-demo" {
  key_name   = "terraform-demo"
  public_key = file("terraform-demo.pub")
}
*/

/*----------for single ec2 & VPC---------*/

module "getEC2" {
    source = "./ec2"
    //ami= "${ec2.getEC2.ami}"
    //instance_type = "${ec2.getEC2.instance_type}"
   // key_name="${ec2.getEC2.key_name}"
}

/*\
module "getVPC" {
    source = "./vpc"
}
*/
/*----------end of single ec2 & VPC---------*/

/*----------for multiple ec2----------------*/
/*
module "getmulEC2" {
    source="./multipleEC2"
}
*/

/*----------for ec2Apahce----------------*/
/*
module "getEC2apache" {
    source="./EC2Apache"
}*/