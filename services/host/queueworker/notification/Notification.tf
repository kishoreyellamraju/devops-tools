resource "aws_instance" "prod-nt-qw01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw01-c"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw01-c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw06-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Cluster               = "Notification"
			Vpc                   = "Yes"
			Name                  = "prod-nt-qw06-c"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Notification"
			Name                  = "prod-nt-qw06-c"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Name                  = "prod-nt-qw03-c"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-nt-qw03-c"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw05-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Elastic               = "Morning"
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-nt-qw05-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-nt-qw05-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "prod-nt-qw04-c"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Cluster               = "Notification"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-nt-qw04-c"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-nt-qw02-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-nt-qw02-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Notification"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw02-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw02-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
			Env                   = "Prod"
			Name                  = "prod-nt-qw03-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Cluster               = "Notification"
			Env                   = "Prod"
			Name                  = "prod-nt-qw03-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Notification"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Name                  = "prod-nt-qw04-b"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw04-b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw05-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Name                  = "prod-nt-qw05-b"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-nt-qw05-b"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw06-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-nt-qw06-b"
			Vpc                   = "Yes"
			Cluster               = "Notification"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-nt-qw06-b"
			Cluster               = "Notification"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw01-b"
			Cluster               = "Notification"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw01-b"
			Cluster               = "Notification"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw07-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
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
			Cluster               = "Notification"
			Vpc                   = "Yes"
			Elastic               = "Afternoon"
			Name                  = "prod-nt-qw07-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "Notification"
			Name                  = "prod-nt-qw07-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw08-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw08-c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Elastic               = "Afternoon"
			Cluster               = "Notification"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw08-c"
			Env                   = "Prod"
			Cluster               = "Notification"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw09-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Elastic               = "Afternoon"
			Cluster               = "Notification"
			Name                  = "prod-nt-qw09-c"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Cluster               = "Notification"
			Name                  = "prod-nt-qw09-c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw07-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-nt-qw07-b"
			Elastic               = "Afternoon"
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-nt-qw07-b"
			Cluster               = "Notification"
			Type                  = "QueueWorker"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw08-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
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
			Type                  = "QueueWorker"
			Elastic               = "Afternoon"
			Name                  = "prod-nt-qw08-b"
			Cluster               = "Notification"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-nt-qw08-b"
			Cluster               = "Notification"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-nt-qw09-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Elastic               = "Afternoon"
			Name                  = "prod-nt-qw09-b"
			Cluster               = "Notification"
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
			Name                  = "prod-nt-qw09-b"
			Cluster               = "Notification"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
