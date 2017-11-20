resource "aws_instance" "breve-master03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "breve-master03"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Breve"
			Type                  = "ElasticSearchMaster"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "breve-master03"
			Env                   = "Prod"
			Cluster               = "Breve"
			Type                  = "ElasticSearchMaster"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "breve-master01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "breve-master01"
			Type                  = "ElasticSearchMaster"
			Cluster               = "Breve"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "breve-master01"
			Type                  = "ElasticSearchMaster"
			Cluster               = "Breve"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "breve-master02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-breve-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Breve"
			Env                   = "Prod"
			Name                  = "breve-master02"
			Type                  = "ElasticSearchMaster"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Breve"
			Env                   = "Prod"
			Name                  = "breve-master02"
			Type                  = "ElasticSearchMaster"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
