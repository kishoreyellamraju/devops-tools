resource "aws_instance" "latte-master01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "latte-master01"
			Cluster               = "Latte"
			Type                  = "ElasticSearchMaster"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "latte-master01"
			Cluster               = "Latte"
			Type                  = "ElasticSearchMaster"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-master02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Name                  = "latte-master02"
			Type                  = "ElasticSearchMaster"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-master02"
			Type                  = "ElasticSearchMaster"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-master03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					        = "${data.template_file.userdata.rendered}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Name                  = "latte-master03"
			Type                  = "ElasticSearchMaster"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-master03"
			Type                  = "ElasticSearchMaster"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
