resource "aws_instance" "americano-data01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.americano-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "americano-data01-2c"
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
		volume_tags {
			Env                   = "Prod"
			Name                  = "americano-data01-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Americano"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "americano-data02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.americano-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Americano"
			Name                  = "americano-data02-2c"
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
		volume_tags {
			Cluster               = "Americano"
			Name                  = "americano-data02-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "americano-data01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.americano-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "americano-data01-2b"
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
		volume_tags {
			Name                  = "americano-data01-2b"
			Cluster               = "Americano"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "americano-data02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.americano-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-americano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "americano-data02-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "americano-data02-2b"
			Cluster               = "Americano"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


