resource "aws_instance" "mocha-client02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-client02-c"
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

resource "aws_instance" "mocha-client03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Name                  = "mocha-client03-b"
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

resource "aws_instance" "mocha-client04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-client04-b"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Env                   = "Prod"
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

resource "aws_instance" "mocha-client01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Cluster               = "Mocha"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-client01-c"
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

resource "aws_instance" "mocha-client01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-client01-b"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Mocha"
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

resource "aws_instance" "mocha-client02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-client02-b"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Mocha"
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

resource "aws_instance" "mocha-client04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Type                  = "ElasticSearchClient"
			Name                  = "mocha-client04-c"
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

resource "aws_instance" "mocha-client03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-client03-c"
			Env                   = "Prod"
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
