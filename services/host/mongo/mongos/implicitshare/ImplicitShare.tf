resource "aws_instance" "prod-is-mongos01-2b" {
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
			Type                  = "MongoS"
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-mongos01-2b"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoS"
			Cluster               = "ImplicitShare"
			Name                  = "prod-is-mongos01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-is-mongos01-2c" {
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
			Type                  = "MongoS"
			Name                  = "prod-is-mongos01-2c"
			Cluster               = "ImplicitShare"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "MongoS"
			Name                  = "prod-is-mongos01-2c"
			Cluster               = "ImplicitShare"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


