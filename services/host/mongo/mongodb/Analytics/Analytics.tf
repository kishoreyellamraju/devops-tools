resource "aws_instance" "prod-analytics-db6" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db6"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db5-old" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Analytics"
			Name                  = "prod-analytics-db5-old"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db5" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Analytics"
			Env                   = "Prod"
			Name                  = "prod-analytics-db5"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db7" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Name                  = "prod-analytics-db7"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-analytics-db8" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
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
			Name                  = "prod-analytics-db8"
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
}

###################################################################################################
###################################################################################################
###################################################################################################


