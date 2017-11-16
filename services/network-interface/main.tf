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

/*
resource "aws_network_interface" "ani0" {
  subnet_id       = "${module.network.publicsubnetc-id}"
  security_groups = ["${module.network.n-asg0-id}"]
}

resource "aws_network_interface" "ani1" {
  subnet_id       = "${module.network.publicsubnetb-id}"
  security_groups = ["${module.network.n-asg1-id}"]
}
*/
resource "aws_network_interface" "ani2" {
  subnet_id       = "${module.network.publicsubnetb-id}"
  security_groups = ["${module.network.n-asg2-id}"]
}



#########################################################
#  				Outputs
#########################################################

output "ani0-id" {
  value = "${aws_network_interface.ani0.id}"
}

output "ani1-id" {
  value = "${aws_network_interface.ani1.id}"
}

output "ani2-id" {
  value = "${aws_network_interface.ani2.id}"
}
