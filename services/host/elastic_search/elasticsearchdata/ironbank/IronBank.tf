resource "aws_instance" "ironbank-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-data02-c"
			Type                  = "ElasticSearchData"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "ironbank-data03-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "IronBank"
			Name                  = "ironbank-data04-c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-data01-c"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-data03-b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Cluster               = "IronBank"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "ironbank-data02-b"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "IronBank"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Name                  = "ironbank-data04-b"
			Cluster               = "IronBank"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "ironbank-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-ironbank-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "IronBank"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "ironbank-data01-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
