resource "aws_instance" "espresso-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-espresso-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Espresso"
			Vpc                   = "Yes"
			Name                  = "espresso-data01-b"
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
			Cluster               = "Espresso"
			Name                  = "espresso-data01-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "espresso-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-espresso-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Espresso"
			Vpc                   = "Yes"
			Name                  = "espresso-data02-b"
			Type                  = "ElasticSearchData"
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
			Cluster               = "Espresso"
			Name                  = "espresso-data02-b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "espresso-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-espresso-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "espresso-data01-c"
			Type                  = "ElasticSearchData"
			Cluster               = "Espresso"
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
			Name                  = "espresso-data01-c"
			Type                  = "ElasticSearchData"
			Cluster               = "Espresso"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "espresso-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m4.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-espresso-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "espresso-data02-c"
			Cluster               = "Espresso"
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
			Name                  = "espresso-data02-c"
			Cluster               = "Espresso"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
