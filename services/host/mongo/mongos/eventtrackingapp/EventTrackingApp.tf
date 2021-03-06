resource "aws_instance" "prod-et-app-mongos01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "EventTrackingApp"
			Type                  = "MongoS"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "prod-et-app-mongos01-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "EventTrackingApp"
			Type                  = "MongoS"
			Env                   = "Prod"
			Name                  = "prod-et-app-mongos01-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-et-app-mongos01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-et-app-mongos01-2b"
			Vpc                   = "Yes"
			Type                  = "MongoS"
			Cluster               = "EventTrackingApp"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-et-app-mongos01-2b"
			Type                  = "MongoS"
			Cluster               = "EventTrackingApp"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


