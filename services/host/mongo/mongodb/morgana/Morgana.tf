resource "aws_instance" "morgana-db5-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.morgana-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db5-2c"
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
		volume_tags {
			Env                   = "Prod"
			Name                  = "morgana-db5-2c"
			Cluster               = "Morgana"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db6-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.morgana-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db6-2c"
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
		volume_tags {
			Name                  = "morgana-db6-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.morgana-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db4-2c"
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
		volume_tags {
			Name                  = "morgana-db4-2c"
			Env                   = "Prod"
			Cluster               = "Morgana"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.morgana-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			Name                  = "morgana-db2-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			Name                  = "morgana-db2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.morgana-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			MongoDbMemberState    = "Primary"
			Name                  = "morgana-db1-2b"
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
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			Name                  = "morgana-db1-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db4-old-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.morgana-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "morgana-db4-old-2b"
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
		volume_tags {
			Name                  = "morgana-db4-old-2b"
			Cluster               = "Morgana"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "morgana-db3-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.morgana-b-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			MongoDbMemberState    = "Secondary"
			Name                  = "morgana-db3-2b"
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
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Morgana"
			Name                  = "morgana-db3-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


