resource "aws_instance" "mazagran-client01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "mazagran-client01-2c"
			Cluster               = "Mazagran"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "mazagran-client01-2c"
			Cluster               = "Mazagran"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Mazagran"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "mazagran-client02-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Mazagran"
			Type                  = "ElasticSearchClient"
			Name                  = "mazagran-client02-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mazagran-client03-2c"
			Vpc                   = "Yes"
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mazagran-client03-2c"
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Name                  = "mazagran-client01-2b"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Name                  = "mazagran-client01-2b"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "mazagran-client03-2b"
			Cluster               = "Mazagran"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "mazagran-client03-2b"
			Cluster               = "Mazagran"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mazagran-client02-2b"
			Type                  = "ElasticSearchClient"
			Cluster               = "Mazagran"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "mazagran-client02-2b"
			Type                  = "ElasticSearchClient"
			Cluster               = "Mazagran"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


