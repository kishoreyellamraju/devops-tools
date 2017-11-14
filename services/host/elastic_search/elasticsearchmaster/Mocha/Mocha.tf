resource "aws_instance" "mocha-master03" {
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
			Name                  = "mocha-master03"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchMaster"
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

resource "aws_instance" "mocha-master01" {
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
			Type                  = "ElasticSearchMaster"
			Name                  = "mocha-master01"
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

resource "aws_instance" "mocha-master02" {
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
			Env                   = "Prod"
			Name                  = "mocha-master02"
			Type                  = "ElasticSearchMaster"
			Vpc                   = "Yes"
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
