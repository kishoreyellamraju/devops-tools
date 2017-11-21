resource "aws_instance" "sidekiq-batch02" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "sidekiq-batch02"
			Type                  = "Batch"
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
			Env                   = "Prod"
			Name                  = "sidekiq-batch02"
			Type                  = "Batch"
			Cluster               = "Sidekiq"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-batch2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-batch2"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Batch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-batch2"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Batch"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-batch01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Batch"
			Type                  = "Batch"
			Name                  = "prod-batch01"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 60
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Batch"
			Type                  = "Batch"
			Name                  = "prod-batch01"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-batch01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-batch01"
			Type                  = "Batch"
			Env                   = "Prod"
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = false
		}

		volume_tags {
			Cluster               = "Sidekiq"
			Name                  = "sidekiq-batch01"
			Type                  = "Batch"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-batch03" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-batch03"
			Env                   = "Prod"
			Type                  = "Batch"
			Vpc                   = "Yes"
			Cluster               = "CommerceBatch"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-batch03"
			Env                   = "Prod"
			Type                  = "Batch"
			Cluster               = "CommerceBatch"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-batch01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-batch01"
			Type                  = "Batch"
			Cluster               = "CommerceBatch"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-batch01"
			Type                  = "Batch"
			Cluster               = "CommerceBatch"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-batch02" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Batch"
			Cluster               = "CommerceBatch"
			Name                  = "prod-co-batch02"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "Batch"
			Cluster               = "CommerceBatch"
			Name                  = "prod-co-batch02"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
