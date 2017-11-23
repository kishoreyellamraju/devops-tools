resource "aws_instance" "prod-user-db8-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.prod-user-db-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "UserDb"
			Name                  = "prod-user-db8-2b"
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-6d39614f"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "UserDb"
			Name                  = "prod-user-db8-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db7-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.prod-user-db-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-user-db7-2b"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "UserDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-02127d55bbd711e54"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-user-db7-2b"
			Type                  = "MongoDb"
			Cluster               = "UserDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db4-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.prod-user-db-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "UserDb"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "prod-user-db4-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-031d8dc8a046603ad"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "UserDb"
			Type                  = "MongoDb"
			Name                  = "prod-user-db4-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db5-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "prod-user-db5-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-f828fd3d"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "prod-user-db5-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db6-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.prod-user-db-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-user-db6-2c"
			Type                  = "MongoDb"
			Cluster               = "UserDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-04fd413941a293362"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-user-db6-2c"
			Type                  = "MongoDb"
			Cluster               = "UserDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db6-old-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.prod-user-db-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-user-db6-old-2b"
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-f828fd3d"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "prod-user-db6-old-2b"
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "prod-user-db3-2c"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-99abaa5a"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		ebs_block_device {
			device_name           = "/dev/sdg"
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "prod-user-db3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


