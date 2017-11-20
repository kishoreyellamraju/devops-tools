resource "aws_instance" "sidekiq-redis-data01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.sidekiq-redis-data-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "sidekiq-redis-data01"
			Cluster               = "Sidekiq"
			Vpc                   = "Yes"
			Type                  = "Redis"
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
			Name                  = "sidekiq-redis-data01"
			Cluster               = "Sidekiq"
			Type                  = "Redis"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sidekiq-redis-data02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.sidekiq-redis-data-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Sidekiq"
			Type                  = "Redis"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "sidekiq-redis-data02"
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
			Cluster               = "Sidekiq"
			Type                  = "Redis"
			Env                   = "Prod"
			Name                  = "sidekiq-redis-data02"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
