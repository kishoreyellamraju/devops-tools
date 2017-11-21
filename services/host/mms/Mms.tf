resource "aws_instance" "prod-mmsagent01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "t2.small"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mmsagent-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-mmsagent01"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Mms"
			Type                  = "Mms"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 16
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-mmsagent01"
			Env                   = "Prod"
			Cluster               = "Mms"
			Type                  = "Mms"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
