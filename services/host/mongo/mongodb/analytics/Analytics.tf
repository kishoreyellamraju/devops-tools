resource "aws_instance" "prod-analytics-db6-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.merlin-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db6-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Primary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-f479b436"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db6-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db5-old-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.merlin-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db5-old-2b"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-c5d31607"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db5-old-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db5-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.merlin-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Analytics"
			Env                   = "Prod"
			Name                  = "prod-analytics-db5-2c"
			MongoDbMemberState    = "Secondary"
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
			snapshot_id           = "snap-0b3855e594da9780a"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Analytics"
			Env                   = "Prod"
			Name                  = "prod-analytics-db5-2c"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db7-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Name                  = "prod-analytics-db7-2c"
			Cluster               = "Analytics"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-d356adf5"
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "prod-analytics-db7-2c"
			Cluster               = "Analytics"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db8-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Analytics"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-analytics-db8-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-d356adf5"
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db8-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


