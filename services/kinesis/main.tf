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

module "vpc" {
  source = "../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

resource "aws_kinesis_stream" "deluge" {
  name             = "${lookup(var.deluge,"name")}"
  shard_count      = "${lookup(var.deluge,"shard_count")}"
  retention_period = "${lookup(var.deluge,"retention_period")}"

}

resource "aws_kinesis_stream" "implicit_post_share_collection_stream" {
  name             = "${lookup(var.implicit_share_stream,"name")}"
  shard_count      = "${lookup(var.implicit_share_stream,"shard_count")}"
  retention_period = "${lookup(var.implicit_share_stream,"retention_period")}"

}


resource "aws_kinesis_stream" "implicit_share_stream" {
  name             = "${lookup(var.implicit_share_stream,"name")}"
  shard_count      = "${lookup(var.implicit_share_stream,"shard_count")}"
  retention_period = "${lookup(var.implicit_share_stream,"retention_period")}"

}

#########################################################
#  				Outputs
#########################################################

output "deluge-id" {
  value = "${aws_kinesis_stream.deluge.id}"
}

output "implicit_post_share_collection_stream-id" {
  value = "${aws_kinesis_stream.implicit_post_share_collection_stream.id}"
}

output "implicit_share_stream-id" {
  value = "${aws_kinesis_stream.implicit_share_stream.id}"
}
