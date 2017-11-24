resource "aws_instance" "latte-data01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data01-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data01-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data02-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data02-2c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data01-2b"
			Env                   = "Prod"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data01-2b"
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data02-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data02-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data11-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data11-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data11-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data34-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Name                  = "latte-data34-2c"
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
			volume_size           = 100
			delete_on_termination = true
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data34-2c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data43-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data43-2c"
			Vpc                   = "Yes"
			Cluster               = "Latte"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data43-2c"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data38-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data38-2c"
			Cluster               = "Latte"
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
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data38-2c"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data36-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Name                  = "latte-data36-2c"
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
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data36-2c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data39-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data39-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = true
		}
		volume_tags {
			Name                  = "latte-data39-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data47-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data47-2c"
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Env                   = "Prod"
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
		volume_tags {
			Name                  = "latte-data47-2c"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data45-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data45-2c"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data45-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data42-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data42-2c"
			Cluster               = "Latte"
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
		volume_tags {
			Env                   = "Prod"
			Name                  = "latte-data42-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data40-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data40-2c"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data40-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data46-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data46-2c"
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
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data46-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data35-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data35-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
		volume_tags {
			Name                  = "latte-data35-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data44-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data44-2c"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = true
		}
		volume_tags {
			Name                  = "latte-data44-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data48-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data48-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
		volume_tags {
			Name                  = "latte-data48-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data41-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data41-2c"
			Vpc                   = "Yes"
			Env                   = "Prod"
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
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data41-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data37-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data37-2c"
			Cluster               = "Latte"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data37-2c"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data33-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "latte-data33-2c"
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
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data33-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data07-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data07-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data07-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data14-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data14-2b"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data14-2b"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data26-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data26-2b"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data26-2b"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data17-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data17-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data17-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data20-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data20-2b"
			Vpc                   = "Yes"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data20-2b"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data13-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data13-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data13-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data32-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data32-2b"
			Env                   = "Prod"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data32-2b"
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data21-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data21-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data21-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data10-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data10-2b"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Env                   = "Prod"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data10-2b"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data09-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data09-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data09-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data15-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data15-2b"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data15-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data04-2b"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data04-2b"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data23-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data23-2b"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data23-2b"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data18-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data18-2b"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data18-2b"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data31-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data31-2b"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data31-2b"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data05-2b"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data05-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data25-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data25-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data25-2b"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data27-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data27-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data27-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data11-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data11-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data11-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data28-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Name                  = "latte-data28-2b"
			Env                   = "Prod"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data28-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data06-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Name                  = "latte-data06-2b"
			Env                   = "Prod"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data06-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data29-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data29-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data29-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data16-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data16-2b"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Vpc                   = "Yes"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data16-2b"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data03-2b"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Env                   = "Prod"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data03-2b"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data22-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Name                  = "latte-data22-2b"
			Env                   = "Prod"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data22-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data19-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data19-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data19-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data30-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data30-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data30-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data24-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data24-2b"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data24-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data12-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data12-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data12-2b"
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data08-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data08-2b"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data08-2b"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data42-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data42-2b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
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
		volume_tags {
			Name                  = "latte-data42-2b"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data37-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Name                  = "latte-data37-2b"
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
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data37-2b"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data46-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data46-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data46-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data33-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data33-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data33-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data35-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data35-2b"
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
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data35-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data40-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data40-2b"
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
		volume_tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data40-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data41-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data41-2b"
			Cluster               = "Latte"
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
		volume_tags {
			Env                   = "Prod"
			Name                  = "latte-data41-2b"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data34-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data34-2b"
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
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data34-2b"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data48-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data48-2b"
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
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data48-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data44-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data44-2b"
			Vpc                   = "Yes"
			Env                   = "Prod"
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
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data44-2b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data39-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data39-2b"
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
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data39-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data36-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data36-2b"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = true
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Name                  = "latte-data36-2b"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data45-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data45-2b"
			Vpc                   = "Yes"
			Cluster               = "Latte"
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
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data45-2b"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data47-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Name                  = "latte-data47-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data47-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data43-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data43-2b"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = true
		}
		volume_tags {
			Name                  = "latte-data43-2b"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data38-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data38-2b"
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
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data38-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data03-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data03-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data04-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data04-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data04-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data05-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data05-2c"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data05-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data06-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data06-2c"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data06-2c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data07-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data07-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data07-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data08-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data08-2c"
			Env                   = "Prod"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data08-2c"
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data09-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data09-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data09-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data10-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data10-2c"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Name                  = "latte-data10-2c"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data12-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Name                  = "latte-data12-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data12-2c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data13-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data13-2c"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data13-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data14-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data14-2c"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data14-2c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data15-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data15-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data15-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data16-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data16-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data16-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data17-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data17-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data17-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data18-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data18-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data18-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data19-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data19-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data19-2c"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data20-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data20-2c"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data20-2c"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data21-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data21-2c"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data21-2c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data22-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data22-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data22-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data23-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data23-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data23-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data24-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data24-2c"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data24-2c"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data25-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data25-2c"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data25-2c"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data26-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "latte-data26-2c"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data26-2c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data27-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data27-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data27-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data28-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data28-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data28-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data29-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data29-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data29-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data30-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Name                  = "latte-data30-2c"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "latte-data30-2c"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data31-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Cluster               = "Latte"
			Name                  = "latte-data31-2c"
			Env                   = "Prod"
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
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Latte"
			Name                  = "latte-data31-2c"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data32-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
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
			Type                  = "ElasticSearchData"
			Name                  = "latte-data32-2c"
			Cluster               = "Latte"
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
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "ElasticSearchData"
			Name                  = "latte-data32-2c"
			Cluster               = "Latte"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


