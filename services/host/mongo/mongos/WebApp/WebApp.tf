resource "aws_instance" "prod-web-app-mongos02-c" {
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
			Name                  = "prod-web-app-mongos02-c"
			Cluster               = "WebApp"
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

resource "aws_instance" "prod-web-app-mongos01-c" {
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
			Vpc                   = "Yes"
			Cluster               = "WebApp"
			Name                  = "prod-web-app-mongos01-c"
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

resource "aws_instance" "prod-web-app-mongos01-b" {
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
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "prod-web-app-mongos01-b"
			Cluster               = "WebApp"
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

resource "aws_instance" "prod-web-app-mongos02-b" {
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
			Name                  = "prod-web-app-mongos02-b"
			Cluster               = "WebApp"
			Env                   = "Prod"
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

resource "aws_instance" "prod-web-app-mongos03-c" {
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
			Cluster               = "WebApp"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoS"
			Name                  = "prod-web-app-mongos03-c"
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

resource "aws_instance" "prod-web-app-mongos03-b" {
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
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "WebApp"
			Name                  = "prod-web-app-mongos03-b"
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
