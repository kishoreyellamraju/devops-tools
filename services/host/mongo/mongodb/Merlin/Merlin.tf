resource "aws_instance" "merlin-a2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Cluster               = "Merlin"
			Name                  = "merlin-a2"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-c43eff06"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "merlin-a1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Name                  = "merlin-a1"
			Cluster               = "Merlin"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-d424d516"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "merlin-a4" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "Merlin"
			Name                  = "merlin-a4"
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
			snapshot_id           = "snap-042de5873e1bdad96"
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "merlin-a3" {
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
			Name                  = "merlin-a3"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Merlin"
			Env                   = "Prod"
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
			snapshot_id           = "snap-78bac95d"
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
