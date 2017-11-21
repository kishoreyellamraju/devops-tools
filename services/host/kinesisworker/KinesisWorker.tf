resource "aws_instance" "prod-is-kw04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw04-c"
			Vpc                   = "Yes"
			Type                  = "KinesisWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw04-c"
			Type                  = "KinesisWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw01-c"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "KinesisWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw01-c"
			Env                   = "Prod"
			Type                  = "KinesisWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw03-c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "ImplicitShare"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw03-c"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "ImplicitShare"
			Vpc                   = "Yes"
			Name                  = "prod-is-kw02-c"
			Type                  = "KinesisWorker"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw02-c"
			Type                  = "KinesisWorker"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw03-b"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "KinesisWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-kw03-b"
			Env                   = "Prod"
			Type                  = "KinesisWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw02-b"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw02-b"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw01-b"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw01-b"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-kw04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	iam_instance_profile        = "${var.implicit-share-worker}"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw04-b"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "KinesisWorker"
			Name                  = "prod-is-kw04-b"
			Env                   = "Prod"
			Cluster               = "ImplicitShare"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
