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
  source = "../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

resource "aws_internet_gateway" "sparkemr-igw" {
  vpc_id = "${module.vpc.sparkemr-id}"

  tags {
  Name 			     = "${var.env}-${module.vpc.sparkemr-id}-igw"
  }
}
resource "aws_internet_gateway" "poshmark-igw" {
  vpc_id = "${module.vpc.poshmark-id}"

  tags {
  Name 			     = "${var.env}-${module.vpc.poshmark-id}-igw"
  }
}

#########################################################
#  				Outputs
#########################################################

output "sparkemr-igw-id" {
  value = "${aws_internet_gateway.sparkemr-igw.id}"
}

output "poshmark-igw-id" {
  value = "${aws_internet_gateway.poshmark-igw.id}"
}
