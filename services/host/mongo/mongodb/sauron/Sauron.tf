resource "aws_instance" "sauron-db4" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "sauron-db4"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Cluster               = "Sauron"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sauron-db5" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "sauron-db5"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Cluster               = "Sauron"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sauron-db1" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "sauron-db1"
			Cluster               = "Sauron"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Primary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sauron-db2" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "sauron-db2"
			Cluster               = "Sauron"
			Type                  = "MongoDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "sauron-db3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "sauron-db3"
			Cluster               = "Sauron"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
