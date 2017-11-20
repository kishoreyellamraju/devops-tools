resource "aws_instance" "mazagran-data04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mazagran-data04-b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Cluster               = "Mazagran"
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
			Name                  = "mazagran-data04-b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Cluster               = "Mazagran"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "mazagran-data01-b"
			Cluster               = "Mazagran"
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
			Name                  = "mazagran-data01-b"
			Cluster               = "Mazagran"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mazagran"
			Name                  = "mazagran-data02-b"
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
			Cluster               = "Mazagran"
			Name                  = "mazagran-data02-b"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.mazagran-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Vpc                   = "Yes"
			Name                  = "mazagran-data03-b"
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
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mazagran-data03-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "mazagran-data02-c"
			Cluster               = "Mazagran"
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
			Name                  = "mazagran-data02-c"
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mazagran"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mazagran-data01-c"
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
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "mazagran-data01-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "ElasticSearchData"
			Env                   = "Prod"
			Name                  = "mazagran-data03-c"
			Vpc                   = "Yes"
			Cluster               = "Mazagran"
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
			Name                  = "mazagran-data03-c"
			Cluster               = "Mazagran"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mazagran-data04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	placement_group             = "${module.placementgroup.mazagran-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-mazagran-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Name                  = "mazagran-data04-c"
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
			Cluster               = "Mazagran"
			Env                   = "Prod"
			Name                  = "mazagran-data04-c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
