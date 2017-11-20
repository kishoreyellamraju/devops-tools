resource "aws_instance" "kaapi-data01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-c.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2c-id}"
	placement_group             = "${module.placementgroup.kaapi-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-data01-c"
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
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-data01-c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-data02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-c.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2c-id}"
	placement_group             = "${module.placementgroup.kaapi-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Kaapi"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "kaapi-data02-c"
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
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Name                  = "kaapi-data02-c"
			Type                  = "ElasticSearchData"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-data01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-b.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2b-id}"
	placement_group             = "${module.placementgroup.kaapi-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "kaapi-data01-b"
			Vpc                   = "Yes"
			Cluster               = "Kaapi"
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
			Name                  = "kaapi-data01-b"
			Cluster               = "Kaapi"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "kaapi-data02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.2xlarge"
	iam_instance_profile        = "${var.elasticsearch}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-b.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet2b-id}"
	placement_group             = "${module.placementgroup.kaapi-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-search-kaapi-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "kaapi-data02-b"
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
			Cluster               = "Kaapi"
			Env                   = "Prod"
			Type                  = "ElasticSearchData"
			Name                  = "kaapi-data02-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
