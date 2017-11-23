resource "aws_instance" "prod-queue3-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-queue-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "ApplicationQueue"
			Vpc                   = "Yes"
			Type                  = "Queue"
			Name                  = "prod-queue3-2b"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "ApplicationQueue"
			Type                  = "Queue"
			Name                  = "prod-queue3-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-queue4-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-queue-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "ApplicationQueue"
			Type                  = "Queue"
			Name                  = "prod-queue4-2b"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "ApplicationQueue"
			Type                  = "Queue"
			Name                  = "prod-queue4-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


