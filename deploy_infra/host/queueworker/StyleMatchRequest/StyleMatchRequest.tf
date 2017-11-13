resource "aws_instance" "prod-smr-qw01-c" {
	ami                         = "common_ami"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "StyleMatchRequest"
			Name                  = "prod-smr-qw01-c"
			Vpc                   = "Yes"
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

resource "aws_instance" "prod-smr-qw01-b" {
	ami                         = "common_ami"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-smr-qw01-b"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Cluster               = "StyleMatchRequest"
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


