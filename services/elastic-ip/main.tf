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

resource "aws_eip" "aeip0" {
  vpc                       = true
  #network_interface         = "${module.network.ani0-id}"
}

resource "aws_eip" "aeip1" {
  vpc                       = true
  #network_interface         = "${module.network.ani1-id}"
}

#########################################################
#  				Outputs
#########################################################

output "aeip0-id" {
  value = "${aws_eip.aeip0.id}"
}

output "aeip1-id" {
  value = "${aws_eip.aeip1.id}"
}

output "aeip0-public-ip" {
  value = "${aws_eip.aeip0.public_ip}"
}

output "aeip1-public-ip" {
  value = "${aws_eip.aeip1.public_ip}"
}

output "aeip0-private_ip" {
  value = "${aws_eip.aeip0.private_ip}"
}

output "aeip1-private_ip" {
  value = "${aws_eip.aeip1.private_ip}"
}
