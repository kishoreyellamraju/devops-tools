resource "aws_instance" "romano-master03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchMaster"
			Cluster               = "Romano"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "romano-master03-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchMaster"
			Cluster               = "Romano"
			Env                   = "Prod"
			Name                  = "romano-master03-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-master02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchMaster"
			Name                  = "romano-master02-2b"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Romano"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchMaster"
			Name                  = "romano-master02-2b"
			Env                   = "Prod"
			Cluster               = "Romano"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "romano-master01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-romano-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Romano"
			Name                  = "romano-master01-2b"
			Type                  = "ElasticSearchMaster"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Romano"
			Name                  = "romano-master01-2b"
			Type                  = "ElasticSearchMaster"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


