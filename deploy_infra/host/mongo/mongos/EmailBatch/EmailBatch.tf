resource "aws_instance" "prod-eb-mongos01-b" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-eb-mongos01-b"
			Cluster               = "EmailBatch"
			Vpc                   = "Yes"
			Type                  = "MongoS"
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

resource "aws_instance" "prod-eb-mongos02-b" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "EmailBatch"
			Type                  = "MongoS"
			Vpc                   = "Yes"
			Name                  = "prod-eb-mongos02-b"
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

resource "aws_instance" "prod-eb-mongos02-c" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "EmailBatch"
			Name                  = "prod-eb-mongos02-c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoS"
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

resource "aws_instance" "prod-eb-mongos01-c" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-eb-mongos01-c"
			Vpc                   = "Yes"
			Cluster               = "EmailBatch"
			Type                  = "MongoS"
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


