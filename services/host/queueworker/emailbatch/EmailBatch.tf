resource "aws_instance" "prod-eb-qw12-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Name                  = "prod-eb-qw12-c"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw10-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Name                  = "prod-eb-qw10-c"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw12-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Prod                  = "Env"
			Name                  = "prod-eb-qw12-b"
			Vpc                   = "Yes"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw10-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Prod                  = "Env"
			Name                  = "prod-eb-qw10-b"
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw11-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Cluster               = "EmailBatch"
			Prod                  = "Env"
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw11-b"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw13-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-eb-qw13-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw15-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-eb-qw15-c"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw14-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Elastic               = "Morning"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw14-b"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw15-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw15-b"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw11-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-eb-qw11-c"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw05-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
			Name                  = "prod-eb-qw05-b"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw06-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Name                  = "prod-eb-qw06-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw07-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-eb-qw07-b"
			Cluster               = "EmailBatch"
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw08-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw08-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw01-b"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-eb-qw02-b"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Elastic               = "Morning"
			Name                  = "prod-eb-qw03-b"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "EmailBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Env                   = "Prod"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw04-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw09-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw09-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Elastic               = "Morning"
			Env                   = "Prod"
			Name                  = "prod-eb-qw03-c"
			Cluster               = "EmailBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw02-c"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "EmailBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw01-c"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw09-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Elastic               = "Morning"
			Name                  = "prod-eb-qw09-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw08-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Name                  = "prod-eb-qw08-c"
			Cluster               = "EmailBatch"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw07-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-eb-qw07-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw06-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Elastic               = "Morning"
			Name                  = "prod-eb-qw06-c"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Cluster               = "EmailBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw05-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw05-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Name                  = "prod-eb-qw04-c"
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw14-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw14-c"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw13-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw13-c"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw16-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
			Name                  = "prod-eb-qw16-b"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-eb-qw16-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-qw16-c"
			Env                   = "Prod"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################
