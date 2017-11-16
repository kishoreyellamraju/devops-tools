resource "aws_instance" "latte-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data01-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data02-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data01-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data02-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data11-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data11-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data34-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data34-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data43-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data43-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data38-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data38-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data36-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data36-c"
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

resource "aws_instance" "latte-data39-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data39-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data47-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data47-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data45-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data45-c"
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

resource "aws_instance" "latte-data42-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data42-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data40-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data40-c"
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

resource "aws_instance" "latte-data46-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data46-c"
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

resource "aws_instance" "latte-data35-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data35-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data44-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data44-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data48-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data48-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data41-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Name                  = "latte-data41-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data37-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data37-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data33-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "latte-data33-c"
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

resource "aws_instance" "latte-data07-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data07-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data14-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data14-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data26-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data26-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data17-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data17-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data20-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data20-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data13-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data13-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data32-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data32-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data21-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data21-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data10-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data10-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data09-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data09-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data15-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data15-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data04-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data23-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data23-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data18-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data18-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data31-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data31-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data05-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Name                  = "latte-data05-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data25-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data25-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data27-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data27-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data11-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data11-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data28-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data28-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data06-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Name                  = "latte-data06-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data29-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data29-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data16-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data16-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data03-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data22-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data22-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data19-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data19-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data30-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data30-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data24-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data24-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data12-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data12-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data08-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data08-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data42-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data42-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data37-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data37-b"
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

resource "aws_instance" "latte-data46-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data46-b"
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

resource "aws_instance" "latte-data33-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Name                  = "latte-data33-b"
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

resource "aws_instance" "latte-data35-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data35-b"
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

resource "aws_instance" "latte-data40-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data40-b"
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

resource "aws_instance" "latte-data41-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "latte-data41-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data34-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data34-b"
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

resource "aws_instance" "latte-data48-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data48-b"
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

resource "aws_instance" "latte-data44-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Name                  = "latte-data44-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data39-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Latte"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data39-b"
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

resource "aws_instance" "latte-data36-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data36-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data45-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data45-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data47-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Name                  = "latte-data47-b"
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

resource "aws_instance" "latte-data43-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data43-b"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data38-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data38-b"
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

resource "aws_instance" "latte-data03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data03-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data04-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data05-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data05-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data06-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data06-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data07-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data07-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data08-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data08-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data09-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data09-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data10-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "latte-data10-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data12-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "latte-data12-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data13-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data13-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data14-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data14-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data15-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data15-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data16-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data16-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data17-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data17-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data18-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "latte-data18-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data19-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "latte-data19-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data20-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data20-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data21-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Name                  = "latte-data21-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data22-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data22-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data23-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Cluster               = "Latte"
			Name                  = "latte-data23-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data24-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data24-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data25-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "latte-data25-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data26-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Latte"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "latte-data26-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data27-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data27-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data28-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data28-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data29-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data29-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data30-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "latte-data30-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data31-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Latte"
			Name                  = "latte-data31-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "latte-data32-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
user_data 					= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-latte-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Name                  = "latte-data32-c"
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
}

###################################################################################################
###################################################################################################
###################################################################################################
