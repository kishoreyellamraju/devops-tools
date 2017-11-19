resource "aws_instance" "romano-client02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.romano-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "ElasticSearchClient"
			Name                  = "romano-client02-c"
			Env                   = "Prod"
			Cluster               = "Romano"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Name                  = "romano-client02-c"
			Env                   = "Prod"
			Cluster               = "Romano"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-client02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.romano-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Romano"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "romano-client02-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Romano"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "romano-client02-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-client01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.romano-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "ElasticSearchClient"
			Name                  = "romano-client01-b"
			Env                   = "Prod"
			Cluster               = "Romano"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Name                  = "romano-client01-b"
			Env                   = "Prod"
			Cluster               = "Romano"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-client01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.romano-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "romano-client01-c"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Cluster               = "Romano"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "romano-client01-c"
			Type                  = "ElasticSearchClient"
			Cluster               = "Romano"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
