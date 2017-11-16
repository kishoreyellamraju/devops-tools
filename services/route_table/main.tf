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

module "vpc" {
  source    = "../../lib"
  env       = "${var.env}"
  app       = "${var.appname}"
}

resource "aws_route_table" "private2c-rt-id" {
  vpc_id  = "${module.vpc.poshmark-id}"

  tags {
    Name          = "${var.routetable_name[0]}"
  }
}

resource "aws_route_table" "poshfit-rt-id" {
  vpc_id  = "${module.vpc.poshmark-id}"

  tags {
    Name          = "${var.routetable_name[1]}"
  }
}

resource "aws_route_table" "public2c-rt-id" {
  vpc_id  = "${module.vpc.poshmark-id}"

  tags {
    Name          = "${var.routetable_name[2]}"

  }
}

resource "aws_route_table" "private2b-rt-id" {
  vpc_id   = "${module.vpc.poshmark-id}"

  tags {
    Name          = "${var.routetable_name[3]}"

  }
}

resource "aws_route_table" "sparkpublic-rt-id" {
  vpc_id  = "${module.vpc.sparkemr-id}"

  tags {
    Name          = "${var.routetable_name[4]}"

  }
}

resource "aws_route_table" "public2b-rt-id" {
  vpc_id  = "${module.vpc.poshmark-id}"

  tags {
    Name          = "${var.routetable_name[5]}"

  }
}

resource "aws_route_table" "sparkprivate-rt-id" {
  vpc_id  = "${module.vpc.sparkemr-id}"

  tags {
    Name          = "${var.routetable_name[6]}"
  
  }
}
#########################################################
#  				Outputs
#########################################################

output "private2c-rt-id" {
  value = "${aws_route_table.private2c-rt-id.id}"
}

output "poshfit-rt-id" {
  value = "${aws_route_table.poshfit-rt-id.id}"
}

output "public2c-rt-id" {
  value = "${aws_route_table.public2c-rt-id.id}"
}

output "private2b-rt-id" {
  value = "${aws_route_table.private2b-rt-id.id}"
}

output "sparkpublic-rt-id" {
  value = "${aws_route_table.sparkpublic-rt-id.id}"
}

output "public2b-rt-id" {
  value = "${aws_route_table.public2b-rt-id.id}"
}

output "sparkprivate-rt-id" {
  value = "${aws_route_table.sparkprivate-rt-id.id}"
}
