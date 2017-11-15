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

module "sg" {
  source = "../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "subnet" {
  source = "../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "vpc" {
  source = "../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

module "app" {
  source = "../../../ec2-lib"
  env = "${var.env}"
  app = "${var.appname}"
}
