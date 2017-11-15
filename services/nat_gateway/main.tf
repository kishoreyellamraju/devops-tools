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



resource "aws_nat_gateway" "ngw0" {
  allocation_id = "${module.network.aeip0-id}"
  subnet_id     = "${module.network.publicsubnetb-id}"

  tags {
    Name 			    = "${var.nat_name[0]}"
	  Environment		= "${var.env}"
	  Application		= "${var.appname}"
	  Bu				     = "${var.bu}"
  }
}

resource "aws_nat_gateway" "ngw1" {
  allocation_id = "${module.network.aeip1-id}"
  subnet_id     = "${module.network.publicsubnetc-id}"

  tags {
    Name 			      = "${var.nat_name[1]}"
	  Environment		  = "${var.env}"
	  Application		  = "${var.appname}"
	  Bu				      = "${var.bu}"
  }
}

#########################################################
#  				Outputs
#########################################################

output "ngw0-id" {
  value = "${aws_nat_gateway.ngw0.id}"
}

output "ngw1-id" {
  value = "${aws_nat_gateway.ngw1.id}"
}
