resource "aws_instance" "americano-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "americano-data01-c"
			Type                  = "ElasticSearchData"
			Cluster               = "Americano"
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

resource "aws_instance" "americano-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Americano"
			Name                  = "americano-data02-c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
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

resource "aws_instance" "americano-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "americano-data01-b"
			Cluster               = "Americano"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
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

resource "aws_instance" "americano-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "americano-data02-b"
			Cluster               = "Americano"
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
			volume_size           = 100
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
