resource "aws_instance" "breve-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.breve-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Breve"
			Name                  = "breve-data01-b"
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
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Breve"
			Name                  = "breve-data01-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "breve-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.breve-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "breve-data02-c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Breve"
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
			Name                  = "breve-data02-c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Breve"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "breve-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.breve-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "breve-data01-c"
			Vpc                   = "Yes"
			Cluster               = "Breve"
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
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "breve-data01-c"
			Cluster               = "Breve"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "breve-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.breve-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "breve-data02-b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Breve"
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
			Name                  = "breve-data02-b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Breve"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
