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
  source = "../../../lib"
  env = "${var.env}"
  app = "${var.appname}"
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
resource "aws_instance" "search-haproxy01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-haproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Search"
			Type                  = "HaProxy"
			Name                  = "search-haproxy01-b"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "redis-haproxy02" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-haproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "HaProxy"
			Name                  = "redis-haproxy02"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Redis"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "search-haproxy01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-haproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Search"
			Type                  = "HaProxy"
			Name                  = "search-haproxy01-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "redis-haproxy01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-haproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "redis-haproxy01"
			Type                  = "HaProxy"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Redis"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-haproxy02" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mocha-haproxy-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "mocha-haproxy02"
			Env                   = "Prod"
			Type                  = "HaProxy"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-vault-haproxy01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.publicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-vault-haproxy-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-vault-haproxy01"
			Cluster               = "Vault"
			Env                   = "Prod"
			Type                  = "HaProxy"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################
