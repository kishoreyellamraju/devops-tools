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

resource "aws_vpc_endpoint" "ave0" {
  vpc_id          = "${module.network.sparkemr-id}"
  service_name    = "${var.service_name}"
  route_table_ids = ["${module.network.sparkpublic-rt-id}"]
}

resource "aws_vpc_endpoint" "ave1" {
  vpc_id          = "${module.network.poshmark-id}"
  service_name    = "${var.service_name}"
  route_table_ids = ["${module.network.private2c-rt-id}","${module.network.public2c-rt-id}","${module.network.private2b-rt-id}","${module.network.public2b-rt-id}"]
}


#########################################################
#  				Outputs
#########################################################

output "ave0-id" {
  value = "${aws_vpc_endpoint.ave0.id}"
}

output "ave1-id" {
  value = "${aws_vpc_endpoint.ave1.id}"
}
