resource "aws_instance" "prod-up-app-mongos01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos01-c"
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

resource "aws_instance" "prod-up-app-mongos02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoS"
			Name                  = "prod-up-app-mongos02-b"
			Env                   = "Prod"
			Cluster               = "UploadApp"
			Vpc                   = "Yes"
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

resource "aws_instance" "prod-up-app-mongos03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoS"
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos03-b"
			Vpc                   = "Yes"
			Env                   = "Prod"
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

resource "aws_instance" "prod-up-app-mongos01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "UploadApp"
			Env                   = "Prod"
			Name                  = "prod-up-app-mongos01-b"
			Type                  = "MongoS"
			Vpc                   = "Yes"
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

resource "aws_instance" "prod-up-app-mongos02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-up-app-mongos02-c"
			Vpc                   = "Yes"
			Type                  = "MongoS"
			Cluster               = "UploadApp"
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

resource "aws_instance" "prod-up-app-mongos03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoS"
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos03-c"
			Vpc                   = "Yes"
			Env                   = "Prod"
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
