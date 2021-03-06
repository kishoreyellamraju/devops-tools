resource "aws_instance" "medea-db3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "medea-db3-2c"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Medea"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "medea-db3-2c"
			Cluster               = "Medea"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "medea-db4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.medea-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Medea"
			Name                  = "medea-db4-2c"
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0e3df2c1371eb3bb7"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Medea"
			Name                  = "medea-db4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "medea-db1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.medea-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "medea-db1-2b"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "Medea"
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
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "medea-db1-2b"
			Env                   = "Prod"
			Cluster               = "Medea"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "medea-db2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.medea-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Medea"
			MongoDbMemberState    = "Secondary"
			Name                  = "medea-db2-2b"
			Vpc                   = "Yes"
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
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Medea"
			Name                  = "medea-db2-2b"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


