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
  source = "../../../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "sg" {
  source = "../../../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "subnet" {
  source = "../../../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "placementgroup" {
  source = "../../../../../ec2-lib"
  env = "${var.env}"
  app = "${var.appname}"
}

data "template_file" "userdata" {
template = "${file("../../../userdata.sh")}"
    vars {
      type                  = "${var.tag-type}"
      env                   = "${var.env}"
      cluster               = "${var.tag-cluster}"
      vpc                   = "${var.tag-vpc}"
      name                  = "${var.tag-name}-${count.index}"
	}
}
