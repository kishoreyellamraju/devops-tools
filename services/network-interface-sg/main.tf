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

resource "aws_security_group" "asg0" {
  name        = "${var.sg_name[0]}"
  description = "${var.sg_name[0]}"
  vpc_id      = "${module.network.poshmark-id}"
}

resource "aws_security_group" "asg1" {
  name        = "${var.sg_name[1]}"
  description = "${var.sg_name[1]}"
  vpc_id      = "${module.network.poshmark-id}"

}

resource "aws_security_group" "asg2" {
  name        = "${var.sg_name[2]}"
  description = "${var.sg_name[2]}"
  vpc_id      = "${module.network.poshmark-id}"

}



#########################################################
#  				Outputs
#########################################################

output "asg0-id" {
  value = "${aws_security_group.asg0.id}"
}

output "asg1-id" {
  value = "${aws_security_group.asg1.id}"
}

output "asg2-id" {
  value = "${aws_security_group.asg2.id}"
}
