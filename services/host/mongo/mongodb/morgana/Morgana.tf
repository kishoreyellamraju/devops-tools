resource "aws_instance" "morgana-db5" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db5"
			Cluster               = "Morgana"
			Type                  = "MongoDb"
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
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db6" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db6"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
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
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db4" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db4"
			Env                   = "Prod"
			Cluster               = "Morgana"
			Type                  = "MongoDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-023af9e574cd66748"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			Name                  = "morgana-db2"
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
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			MongoDbMemberState    = "Primary"
			Name                  = "morgana-db1"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-16e3b033"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db4-old" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "morgana-db4-old"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Morgana"
			Type                  = "MongoDb"
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
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db3"
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
			volume_size           = 2048
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
