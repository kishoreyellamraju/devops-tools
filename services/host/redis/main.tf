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
resource "aws_instance" "cerberus-b01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Cerberus"
			Vpc                   = "Yes"
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "cerberus-b01"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-b02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "cerberus-b02"
			Cluster               = "Cerberus"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-data03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-data-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-data03"
			Cluster               = "RedisData"
			Env                   = "Prod"
			Type                  = "Redis"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-data04" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-data-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "prod-redis-data04"
			Cluster               = "RedisData"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "UserData"
			Name                  = "prod-redis-userdata-a03"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-a01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-cache-a01"
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "RedisCache"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Type                  = "Redis"
			Vpc                   = "Yes"
			Name                  = "prod-redis-cache-a02"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-b01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Name                  = "prod-redis-cache-b01"
			Type                  = "Redis"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-b02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-cache-b02"
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Type                  = "Redis"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stormlight-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.stormlight-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Stormlight"
			Vpc                   = "Yes"
			Name                  = "stormlight-a02"
			Type                  = "Redis"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stormlight-a01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.stormlight-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stormlight"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "stormlight-a01"
			Type                  = "Redis"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-redis-data01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.sidekiq-redis-data-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "sidekiq-redis-data01"
			Cluster               = "Sidekiq"
			Vpc                   = "Yes"
			Type                  = "Redis"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-c04" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-cache-c04"
			Vpc                   = "Yes"
			Cluster               = "RedisCache"
			Type                  = "Redis"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-c03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Name                  = "prod-redis-cache-c03"
			Vpc                   = "Yes"
			Type                  = "Redis"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "prod-redis-userdata-a02"
			Cluster               = "UserData"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 500
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-userdata-a01"
			Vpc                   = "Yes"
			Type                  = "Redis"
			Cluster               = "UserData"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 500
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-redis-data02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.sidekiq-redis-data-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Sidekiq"
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "sidekiq-redis-data02"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a04" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-userdata-a04"
			Cluster               = "UserData"
			Type                  = "Redis"
			Env                   = "Prod"
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

resource "aws_instance" "cerberus-a01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Redis"
			Vpc                   = "Yes"
			Cluster               = "Cerberus"
			Name                  = "cerberus-a01"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "cerberus-a02"
			Cluster               = "Cerberus"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
