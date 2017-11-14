resource "aws_instance" "prod-redis-data03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
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
	key_name                    = "${var.key_name}"
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
