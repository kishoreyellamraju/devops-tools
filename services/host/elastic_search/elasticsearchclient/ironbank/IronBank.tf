resource "aws_instance" "ironbank-client01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.ironbank-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "IronBank"
			Name                  = "ironbank-client01-2c"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "IronBank"
			Name                  = "ironbank-client01-2c"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-client02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.ironbank-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-client02-2c"
			Type                  = "ElasticSearchClient"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "ironbank-client02-2c"
			Type                  = "ElasticSearchClient"
			Cluster               = "IronBank"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-client01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.ironbank-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-client01-2b"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "ironbank-client01-2b"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-client02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.ironbank-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "IronBank"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "ironbank-client02-2b"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "IronBank"
			Env                   = "Prod"
			Name                  = "ironbank-client02-2b"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


