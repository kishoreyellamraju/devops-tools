resource "aws_instance" "sidekiq-app-worker01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "sidekiq-app-worker01"
			Cluster               = "Sidekiq"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "AppWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "sidekiq-app-worker01"
			Cluster               = "Sidekiq"
			Env                   = "Prod"
			Type                  = "AppWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
