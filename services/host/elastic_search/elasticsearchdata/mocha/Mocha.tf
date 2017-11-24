resource "aws_instance" "mocha-data01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Mocha"
			Name                  = "mocha-data01-2b"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Mocha"
			Name                  = "mocha-data01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Name                  = "mocha-data02-2b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data02-2b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data03-2b"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data03-2b"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-data04-2b"
			Cluster               = "Mocha"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "mocha-data04-2b"
			Cluster               = "Mocha"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data05-2b"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Env                   = "Prod"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data05-2b"
			Cluster               = "Mocha"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data06-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-data06-2b"
			Cluster               = "Mocha"
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
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "mocha-data06-2b"
			Cluster               = "Mocha"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data07-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data07-2b"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data07-2b"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data08-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Mocha"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-data08-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Mocha"
			Env                   = "Prod"
			Name                  = "mocha-data08-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data09-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "mocha-data09-2b"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data09-2b"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data10-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mocha-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-data10-2b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "mocha-data10-2b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data01-2c"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Env                   = "Prod"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Name                  = "mocha-data01-2c"
			Cluster               = "Mocha"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data02-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data02-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "mocha-data03-2c"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "mocha-data03-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data04-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-data04-2c"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "mocha-data04-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data05-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data05-2c"
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
			volume_size           = 3072
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data05-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data07-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data07-2c"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data07-2c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data08-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-data08-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "mocha-data08-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data09-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data09-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
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
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data09-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data06-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-data06-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-data06-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-data10-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mocha-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mocha-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Name                  = "mocha-data10-2c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "st1"
			volume_size           = 6144
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-data10-2c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


