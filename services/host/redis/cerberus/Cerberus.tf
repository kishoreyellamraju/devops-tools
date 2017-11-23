resource "aws_instance" "cerberus-b01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Cerberus"
			Vpc                   = "Yes"
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "cerberus-b01-2b"
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
		volume_tags {
			Cluster               = "Cerberus"
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "cerberus-b01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-b02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "cerberus-b02-2b"
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
		volume_tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "cerberus-b02-2b"
			Cluster               = "Cerberus"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-a01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Redis"
			Vpc                   = "Yes"
			Cluster               = "Cerberus"
			Name                  = "cerberus-a01-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "Redis"
			Cluster               = "Cerberus"
			Name                  = "cerberus-a01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-a02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "cerberus-a02-2b"
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
		volume_tags {
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "cerberus-a02-2b"
			Cluster               = "Cerberus"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


