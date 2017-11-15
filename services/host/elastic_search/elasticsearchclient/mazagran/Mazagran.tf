resource "aws_instance" "mazagran-client01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "mazagran-client01-c"
			Cluster               = "Mazagran"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Mazagran"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "mazagran-client02-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mazagran-client03-c"
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

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Name                  = "mazagran-client01-b"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "mazagran-client03-b"
			Cluster               = "Mazagran"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-client02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mazagran-client02-b"
			Type                  = "ElasticSearchClient"
			Cluster               = "Mazagran"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################
