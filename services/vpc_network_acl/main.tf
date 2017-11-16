/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to create VPC


 ########################################################
*/

provider "aws" {
  region     = "${var.region}"
}

 terraform {
	  backend "s3" {}
}

module "network" {
  source = "../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}
#######production acl######################
resource "aws_network_acl" "poshmark-acl1" {
  vpc_id = "${module.network.poshmark-id}"
  subnet_ids = ["${element(module.network.appsubnets, count.index)}"]
  ingress {
    protocol   = "all"
    rule_no    = 1000
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "all"
    rule_no    = 1000
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags {
    Name 			     = "${var.nacl_name[0]}"
  	Environment		 = "${var.env}"
  	Application		 = "${var.appname}"
  	Bu				     = "${var.bu}"
  }
}
#######rc acl######################
resource "aws_network_acl" "poshmark-acl2" {
  vpc_id = "${module.network.poshmark-id}"
  subnet_ids = ["${module.network.publicsubnetc-id}"]
  ingress {
    protocol   = "all"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "all"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags {
    Name 			     = "${var.nacl_name[1]}"
  	Environment		 = "${var.env}"
  	Application		 = "${var.appname}"
  	Bu				     = "${var.bu}"
  }
}



#########################################################
#  				Outputs
#########################################################

output "poshmark-acl1-id" {
  value = "${aws_network_acl.poshmark-acl1.id}"
}

output "poshmark-acl2-id" {
  value = "${aws_network_acl.poshmark-acl2.id}"
}
