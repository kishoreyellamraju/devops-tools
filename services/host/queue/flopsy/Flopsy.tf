resource "aws_instance" "flopsy-queue2" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-queue-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Queue"
			Cluster               = "Flopsy"
			Name                  = "flopsy-queue2"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Queue"
			Cluster               = "Flopsy"
			Name                  = "flopsy-queue2"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "flopsy-queue1" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-queue-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "Queue"
			Name                  = "flopsy-queue1"
			Env                   = "Prod"
			Cluster               = "Flopsy"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Queue"
			Name                  = "flopsy-queue1"
			Env                   = "Prod"
			Cluster               = "Flopsy"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


