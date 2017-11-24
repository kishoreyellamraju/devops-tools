resource "aws_instance" "latte-client01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.latte-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "latte-client01-2c"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
			Name                  = "latte-client01-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.latte-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-client02-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "latte-client02-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.latte-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "latte-client03-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "latte-client03-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client04-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.latte-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "ElasticSearchClient"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-client04-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-client04-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client05-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.latte-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-client05-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-client05-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client06-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.latte-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-client06-2c"
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "latte-client06-2c"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.latte-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-client01-2b"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Cluster               = "Latte"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "latte-client01-2b"
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.latte-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
			Name                  = "latte-client02-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
			Name                  = "latte-client02-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.latte-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
			Vpc                   = "Yes"
			Name                  = "latte-client03-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
			Name                  = "latte-client03-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.latte-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Name                  = "latte-client04-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "ElasticSearchClient"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-client04-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.latte-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-client05-2b"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-client05-2b"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-client06-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.latte-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "latte-client06-2b"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "latte-client06-2b"
			Cluster               = "Latte"
			Type                  = "ElasticSearchClient"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


