resource "aws_instance" "kaapi-master03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchMaster"
			Cluster               = "Kaapi"
			Name                  = "kaapi-master03-2c"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchMaster"
			Cluster               = "Kaapi"
			Name                  = "kaapi-master03-2c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-master02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Kaapi"
			Type                  = "ElasticSearchMaster"
			Name                  = "kaapi-master02-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Kaapi"
			Type                  = "ElasticSearchMaster"
			Name                  = "kaapi-master02-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-master01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "kaapi-master01-2b"
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Type                  = "ElasticSearchMaster"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "kaapi-master01-2b"
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Type                  = "ElasticSearchMaster"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


