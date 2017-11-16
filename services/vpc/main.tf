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


resource "aws_vpc" "sparkemr" {
  cidr_block         				= "${var.vpc_cidr[0]}"
  instance_tenancy   				= "default"
  enable_dns_support 				= "true"
  enable_dns_hostnames 				= "true"
  enable_classiclink				= "false"
  enable_classiclink_dns_support 	= "false"

  tags {
    Name 			    = "${var.vpc_name[0]}"
	  Environment		= "${var.env}"
  }
}

resource "aws_default_route_table" "adrt0" {
  default_route_table_id = "${aws_vpc.sparkemr.default_route_table_id}"

}

resource "aws_vpc" "poshmark" {
  cidr_block         				= "${var.vpc_cidr[1]}"
  instance_tenancy   				= "default"
  enable_dns_support 				= "true"
  enable_dns_hostnames 				= "true"
  enable_classiclink				= "true"
  enable_classiclink_dns_support 	= "false"

  tags {
    Name 			    = "${var.vpc_name[1]}"
	  Environment		= "${var.env}"
  }
}

resource "aws_default_route_table" "adrt1" {
  default_route_table_id = "${aws_vpc.poshmark.default_route_table_id}"
}

#########################################################
#  				Outputs
#########################################################

output "sparkemr-id" {
  value = "${aws_vpc.sparkemr.id}"
}
output "poshmark-id" {
  value = "${aws_vpc.poshmark.id}"
}
