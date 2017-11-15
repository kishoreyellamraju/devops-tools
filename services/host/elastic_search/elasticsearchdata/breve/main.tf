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
