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
  source    = "../../lib"
  env       = "${var.env}"
  app       = "${var.appname}"
}


resource "aws_route" "private2c-rt-ar-1" {
  route_table_id            = "${module.network.private2c-rt-id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = "${module.network.ngw1-id}"
}

resource "aws_route" "private2c-rt-ar-2" {
  route_table_id            = "${module.network.private2c-rt-id}"
  destination_cidr_block    = "172.16.0.0/16"
  network_interface_id      = "${module.network.ani2-id}"
}

resource "aws_route" "poshfit-rt-ar-1" {
  route_table_id            = "${module.network.poshfit-rt-id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = "${module.network.poshmark-igw-id}"
}

resource "aws_route" "public2c-rt-ar-1" {
  route_table_id            = "${module.network.public2c-rt-id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = "${module.network.poshmark-igw-id}"
}

resource "aws_route" "public2c-rt-ar-2" {
  route_table_id            = "${module.network.public2c-rt-id}"
  destination_cidr_block    = "172.16.0.0/16"
  network_interface_id      = "${module.network.ani2-id}"
}

resource "aws_route" "private2b-rt-ar-1" {
  route_table_id            = "${module.network.private2b-rt-id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = "${module.network.ngw0-id}"
}

resource "aws_route" "private2b-rt-ar-2" {
  route_table_id            = "${module.network.private2b-rt-id}"
  destination_cidr_block    = "172.16.0.0/16"
  network_interface_id      = "${module.network.ani2-id}"
}

resource "aws_route" "sparkpublic-rt-ar-1" {
  route_table_id            = "${module.network.sparkpublic-rt-id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = "${module.network.sparkemr-igw-id}"
}

resource "aws_route" "public2b-rt-ar-1" {
  route_table_id            = "${module.network.public2b-rt-id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = "${module.network.poshmark-igw-id}"
}

resource "aws_route" "public2b-rt-ar-2" {
  route_table_id            = "${module.network.public2b-rt-id}"
  destination_cidr_block    = "172.16.0.0/16"
  network_interface_id      = "${module.network.ani2-id}"
}


#########################################################
#  				Outputs
#########################################################
