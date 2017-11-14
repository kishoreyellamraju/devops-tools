resource "aws_instance" "prod-redis-userdata-a03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
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

resource "aws_instance" "prod-redis-userdata-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
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
	key_name                    = "${var.key_name}"
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

resource "aws_instance" "prod-redis-userdata-a04" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
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