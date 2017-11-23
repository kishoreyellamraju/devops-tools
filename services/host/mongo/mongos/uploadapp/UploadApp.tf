resource "aws_instance" "prod-up-app-mongos01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos01-2c"
			Type                  = "MongoS"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos01-2c"
			Type                  = "MongoS"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-up-app-mongos02-2b" {
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
			Type                  = "MongoS"
			Name                  = "prod-up-app-mongos02-2b"
			Env                   = "Prod"
			Cluster               = "UploadApp"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "MongoS"
			Name                  = "prod-up-app-mongos02-2b"
			Env                   = "Prod"
			Cluster               = "UploadApp"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-up-app-mongos03-2b" {
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
			Type                  = "MongoS"
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos03-2b"
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
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos03-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-up-app-mongos01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "UploadApp"
			Env                   = "Prod"
			Name                  = "prod-up-app-mongos01-2b"
			Type                  = "MongoS"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "UploadApp"
			Env                   = "Prod"
			Name                  = "prod-up-app-mongos01-2b"
			Type                  = "MongoS"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-up-app-mongos02-2c" {
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
			Env                   = "Prod"
			Name                  = "prod-up-app-mongos02-2c"
			Vpc                   = "Yes"
			Type                  = "MongoS"
			Cluster               = "UploadApp"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-up-app-mongos02-2c"
			Type                  = "MongoS"
			Cluster               = "UploadApp"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-up-app-mongos03-2c" {
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
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos03-2c"
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
			Cluster               = "UploadApp"
			Name                  = "prod-up-app-mongos03-2c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


