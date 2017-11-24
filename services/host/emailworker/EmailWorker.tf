resource "aws_instance" "sidekiq-email-worker04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-email-worker04-2b"
			Type                  = "EmailWorker"
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
			volume_size           = 250
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-email-worker04-2b"
			Type                  = "EmailWorker"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-email-worker03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "EmailWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-email-worker03-2b"
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
			volume_size           = 250
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "EmailWorker"
			Env                   = "Prod"
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-email-worker03-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-email-worker05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "EmailWorker"
			Env                   = "Prod"
			Name                  = "sidekiq-email-worker05-2b"
			Vpc                   = "Yes"
			Cluster               = "Sidekiq"
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
			volume_size           = 250
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "EmailWorker"
			Env                   = "Prod"
			Name                  = "sidekiq-email-worker05-2b"
			Cluster               = "Sidekiq"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-email-worker01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "EmailWorker"
			Env                   = "Prod"
			Cluster               = "Sidekiq"
			Vpc                   = "Yes"
			Name                  = "sidekiq-email-worker01-2b"
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
			volume_size           = 250
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "EmailWorker"
			Env                   = "Prod"
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-email-worker01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-email-worker02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "EmailWorker"
			Cluster               = "Sidekiq"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "sidekiq-email-worker02-2b"
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
			volume_size           = 250
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "EmailWorker"
			Cluster               = "Sidekiq"
			Env                   = "Prod"
			Name                  = "sidekiq-email-worker02-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


