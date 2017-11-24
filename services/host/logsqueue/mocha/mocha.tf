resource "aws_instance" "prod-kibana-queue1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-logs-queue-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "LogsQueue"
			Env                   = "Prod"
			Name                  = "prod-kibana-queue1-2b"
			Cluster               = "Mocha"
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
			Type                  = "LogsQueue"
			Env                   = "Prod"
			Name                  = "prod-kibana-queue1-2b"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


