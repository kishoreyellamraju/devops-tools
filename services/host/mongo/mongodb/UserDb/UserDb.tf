resource "aws_instance" "prod-user-db8" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "UserDb"
			Name                  = "prod-user-db8"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db7" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-user-db7"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db4" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "UserDb"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "prod-user-db4"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db5" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
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
			Name                  = "prod-user-db5"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db6" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-user-db6"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db6-old" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r4.8xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-user-db6-old"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-user-db3" {
	ami                         = "common_ami"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "common_key_name"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "UserDb"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "prod-user-db3"
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
}

###################################################################################################
###################################################################################################
###################################################################################################

