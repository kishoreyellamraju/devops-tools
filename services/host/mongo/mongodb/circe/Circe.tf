resource "aws_instance" "circe-db4" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.circe-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Circe"
			Env                   = "Prod"
			Name                  = "circe-db4"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-07707a00d57ac902e"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Circe"
			Env                   = "Prod"
			Name                  = "circe-db4"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "circe-db3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "circe-db3"
			Cluster               = "Circe"
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
		volume_tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "circe-db3"
			Cluster               = "Circe"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "circe-db1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.circe-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "circe-db1"
			Cluster               = "Circe"
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
		volume_tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "circe-db1"
			Cluster               = "Circe"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "circe-db2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.circe-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "circe-db2"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Circe"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0c188e5f97daa7446"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		ebs_block_device {
			device_name           = "/dev/sdg"
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 250
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "circe-db2"
			Env                   = "Prod"
			Cluster               = "Circe"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "circe-db4-old" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.circe-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Cluster               = "Circe"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "circe-db4-old"
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
			Cluster               = "Circe"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "circe-db4-old"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
