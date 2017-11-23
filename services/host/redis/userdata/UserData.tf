resource "aws_instance" "prod-redis-userdata-a03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-userdata-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "UserData"
			Name                  = "prod-redis-userdata-a03-2b"
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
			Type                  = "Redis"
			Env                   = "Prod"
			Cluster               = "UserData"
			Name                  = "prod-redis-userdata-a03-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-userdata-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "prod-redis-userdata-a02-2b"
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
		volume_tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "prod-redis-userdata-a02-2b"
			Cluster               = "UserData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-userdata-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-userdata-a01-2b"
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
		volume_tags {
			Name                  = "prod-redis-userdata-a01-2b"
			Type                  = "Redis"
			Cluster               = "UserData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-redis-userdata-a04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.redis-userdata-id}"
	vpc_security_group_ids      = ["${module.sg.production-redis-userdata-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-redis-userdata-a04-2b"
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

		volume_tags {
			Name                  = "prod-redis-userdata-a04-2b"
			Cluster               = "UserData"
			Type                  = "Redis"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


