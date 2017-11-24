resource "aws_instance" "doppio-data03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.doppio-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Doppio"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Name                  = "doppio-data03-2c"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Doppio"
			Type                  = "ElasticSearchData"
			Name                  = "doppio-data03-2c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data04-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.doppio-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Doppio"
			Name                  = "doppio-data04-2c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
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
			Cluster               = "Doppio"
			Name                  = "doppio-data04-2c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.doppio-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Doppio"
			Name                  = "doppio-data01-2c"
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
			Cluster               = "Doppio"
			Name                  = "doppio-data01-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.doppio-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "doppio-data02-2c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Doppio"
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
			Name                  = "doppio-data02-2c"
			Env                   = "Prod"
			Cluster               = "Doppio"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.doppio-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Doppio"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "doppio-data02-2b"
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
			Cluster               = "Doppio"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "doppio-data02-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.doppio-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Doppio"
			Vpc                   = "Yes"
			Name                  = "doppio-data04-2b"
			Env                   = "Prod"
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
			Cluster               = "Doppio"
			Name                  = "doppio-data04-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.doppio-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Doppio"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "doppio-data03-2b"
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
			Cluster               = "Doppio"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "doppio-data03-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "doppio-data01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.doppio-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Doppio"
			Vpc                   = "Yes"
			Name                  = "doppio-data01-2b"
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
			Env                   = "Prod"
			Cluster               = "Doppio"
			Name                  = "doppio-data01-2b"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


