resource "aws_instance" "romano-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.romano-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Romano"
			Name                  = "romano-data01-b"
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
			Cluster               = "Romano"
			Name                  = "romano-data01-b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.romano-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Romano"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Name                  = "romano-data02-b"
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
			Cluster               = "Romano"
			Type                  = "ElasticSearchData"
			Name                  = "romano-data02-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.romano-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Name                  = "romano-data01-c"
			Cluster               = "Romano"
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
			Type                  = "ElasticSearchData"
			Name                  = "romano-data01-c"
			Cluster               = "Romano"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.romano-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "romano-data02-c"
			Cluster               = "Romano"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
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
			Name                  = "romano-data02-c"
			Cluster               = "Romano"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
