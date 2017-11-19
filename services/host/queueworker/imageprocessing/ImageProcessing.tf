resource "aws_instance" "prod-ip-qw08-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Afternoon"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw08-c"
			Cluster               = "ImageProcessing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw08-c"
			Cluster               = "ImageProcessing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw07-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-ip-qw07-c"
			Elastic               = "Afternoon"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-ip-qw07-c"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw06-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
			Name                  = "prod-ip-qw06-c"
			Elastic               = "Afternoon"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
			Name                  = "prod-ip-qw06-c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw05-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "prod-ip-qw05-c"
			Elastic               = "Afternoon"
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw05-c"
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw01-b"
			Vpc                   = "Yes"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw01-b"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
			Env                   = "Prod"
			Name                  = "prod-ip-qw02-b"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
			Env                   = "Prod"
			Name                  = "prod-ip-qw02-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Name                  = "prod-ip-qw03-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw03-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "ImageProcessing"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw04-b"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw04-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw05-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Elastic               = "Afternoon"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw05-b"
			Vpc                   = "Yes"
			Cluster               = "ImageProcessing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-ip-qw05-b"
			Cluster               = "ImageProcessing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw06-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Elastic               = "Afternoon"
			Vpc                   = "Yes"
			Name                  = "prod-ip-qw06-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-ip-qw06-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw08-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Elastic               = "Afternoon"
			Name                  = "prod-ip-qw08-b"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw08-b"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw07-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-ip-qw07-b"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Elastic               = "Afternoon"
			Cluster               = "ImageProcessing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-ip-qw07-b"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "ImageProcessing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Cluster               = "ImageProcessing"
			Name                  = "prod-ip-qw03-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
			Name                  = "prod-ip-qw03-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw04-c"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Cluster               = "ImageProcessing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw04-c"
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw01-c"
			Vpc                   = "Yes"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw01-c"
			Cluster               = "ImageProcessing"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ip-qw02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw02-c"
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Cluster               = "ImageProcessing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-ip-qw02-c"
			Type                  = "QueueWorker"
			Cluster               = "ImageProcessing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
