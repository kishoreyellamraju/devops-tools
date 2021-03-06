resource "aws_instance" "kaapi-client02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.kaapi-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-client02-2c"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-client02-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-client02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.kaapi-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Kaapi"
			Name                  = "kaapi-client02-2b"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Kaapi"
			Name                  = "kaapi-client02-2b"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-client01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.kaapi-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "kaapi-client01-2c"
			Cluster               = "Kaapi"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Name                  = "kaapi-client01-2c"
			Cluster               = "Kaapi"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-client01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.kaapi-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-client01-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-client01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


