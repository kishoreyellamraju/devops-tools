resource "aws_instance" "prod-redis-cache-a01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-cache-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-cache-a01-2b"
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
		volume_tags {
			Name                  = "prod-redis-cache-a01-2b"
			Type                  = "Redis"
			Env                   = "Prod"
			Cluster               = "RedisCache"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-a02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-cache-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Type                  = "Redis"
			Vpc                   = "Yes"
			Name                  = "prod-redis-cache-a02-2b"
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
		volume_tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Type                  = "Redis"
			Name                  = "prod-redis-cache-a02-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-b01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-cache-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Name                  = "prod-redis-cache-b01-2b"
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
		volume_tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Name                  = "prod-redis-cache-b01-2b"
			Type                  = "Redis"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-b02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-cache-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-cache-b02-2b"
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
		volume_tags {
			Name                  = "prod-redis-cache-b02-2b"
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Type                  = "Redis"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-c04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-cache-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-cache-c04-2b"
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
		volume_tags {
			Name                  = "prod-redis-cache-c04-2b"
			Cluster               = "RedisCache"
			Type                  = "Redis"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-cache-c03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-cache-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-cache-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Name                  = "prod-redis-cache-c03-2b"
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
		volume_tags {
			Cluster               = "RedisCache"
			Env                   = "Prod"
			Name                  = "prod-redis-cache-c03-2b"
			Type                  = "Redis"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


