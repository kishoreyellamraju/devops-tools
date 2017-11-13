resource "aws_instance" "prod-redis-cache-a01" {
	ami                         = "common_ami"
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
	ami                         = "common_ami"
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
	ami                         = "common_ami"
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
	ami                         = "common_ami"
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

resource "aws_instance" "prod-redis-cache-c04" {
	ami                         = "common_ami"
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
	ami                         = "common_ami"
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


