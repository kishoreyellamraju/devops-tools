resource "aws_instance" "stormlight-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
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
	key_name                    = "${var.key_name}"
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
