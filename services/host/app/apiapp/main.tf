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
  source = "../../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "sg" {
  source = "../../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "subnet" {
  source = "../../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

data "template_file" "userdata" {
  template = "${file("../../userdata.sh")}"

    vars {
      type                  = "${aws_instance.tags.type}"
      env                   = "${aws_instance.tags.env}"
      cluster               = "${aws_instance.tags.cluster}"
      vpc                   = "${aws_instance.tags.vpc}"
      name                  = "${aws_instance.tags.name}"
	}
}
