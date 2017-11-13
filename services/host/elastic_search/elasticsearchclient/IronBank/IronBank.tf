resource "aws_instance" "ironbank-client01-c" {
	ami                         = "common_ami"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "IronBank"
			Name                  = "ironbank-client01-c"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
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

resource "aws_instance" "ironbank-client02-c" {
	ami                         = "common_ami"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-client02-c"
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

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-client01-b" {
	ami                         = "common_ami"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-client01-b"
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

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-client02-b" {
	ami                         = "common_ami"
	ebs_optimized               = false
	instance_type               = "c4.large"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "IronBank"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "ironbank-client02-b"
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


