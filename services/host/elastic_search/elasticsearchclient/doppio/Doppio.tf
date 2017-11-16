resource "aws_instance" "doppio-client02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "elasticsearch"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Cluster               = "Doppio"
			Env                   = "Prod"
			Name                  = "doppio-client02-b"
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

resource "aws_instance" "doppio-client01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("../${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Name                  = "doppio-client01-b"
			Cluster               = "Doppio"
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

resource "aws_instance" "doppio-client02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "doppio-client02-c"
			Vpc                   = "Yes"
			Cluster               = "Doppio"
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

resource "aws_instance" "doppio-client01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Doppio"
			Name                  = "doppio-client01-c"
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

resource "aws_instance" "doppio-client04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-doppio-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Doppio"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "doppio-client04-c"
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
