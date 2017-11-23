resource "aws_instance" "gandalf-m3-2c" {
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
			Type                  = "MongoDb"
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-m3-2c"
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
			Type                  = "MongoDb"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-m3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-p3-2c" {
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
			Name                  = "gandalf-p3-2c"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Vpc                   = "Yes"
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
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-p3-2c"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-o3-2c" {
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
			Type                  = "MongoDb"
			Name                  = "gandalf-o3-2c"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
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
			Type                  = "MongoDb"
			Name                  = "gandalf-o3-2c"
			Env                   = "Prod"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-r3-2c" {
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
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-r3-2c"
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
			snapshot_id           = ""
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-r3-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-q3-2c" {
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
			Type                  = "MongoDb"
			Name                  = "gandalf-q3-2c"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
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
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "gandalf-q3-2c"
			Cluster               = "Gandalf"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-n3-2c" {
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
			Cluster               = "Gandalf"
			Name                  = "gandalf-n3-2c"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
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
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-n3-2c"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-q2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-q2-2b"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "gandalf-q2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-q1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-q1-2b"
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
			Type                  = "MongoDb"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-q1-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-r2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
			Name                  = "gandalf-r2-2b"
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
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-r2-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-r1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			MongoDbMemberState    = "Primary"
			Name                  = "gandalf-r1-2b"
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
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-r1-2b"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-o2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-o2-2b"
			Type                  = "MongoDb"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-o2-2b"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-o1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Name                  = "gandalf-o1-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Primary"
			Cluster               = "Gandalf"
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
			Type                  = "MongoDb"
			Name                  = "gandalf-o1-2b"
			Env                   = "Prod"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-p2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-p2-2b"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
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
			Name                  = "gandalf-p2-2b"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-p1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Primary"
			Name                  = "gandalf-p1-2b"
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
			Cluster               = "Gandalf"
			Name                  = "gandalf-p1-2b"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-m2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-m2-2b"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-m2-2b"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-m1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-m1-2b"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Name                  = "gandalf-m1-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-n2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-n2-2b"
			Vpc                   = "Yes"
			Cluster               = "Gandalf"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-n2-2b"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-n1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Name                  = "gandalf-n1-2b"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
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
			Name                  = "gandalf-n1-2b"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-h4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-h4-2c"
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
			snapshot_id           = "snap-0c9666284234282e9"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-h4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-j4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "gandalf-j4-2c"
			Cluster               = "Gandalf"
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
			snapshot_id           = "snap-07ee23a4250b0c03d"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "gandalf-j4-2c"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-f4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Cluster               = "Gandalf"
			Name                  = "gandalf-f4-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0529a6a800abd5fbc"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-f4-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-p4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "gandalf-p4-2c"
			Vpc                   = "Yes"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-08967acdaa1d96f91"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "gandalf-p4-2c"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-b4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-b4-2c"
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
			snapshot_id           = "snap-09c82025139e198aa"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-b4-2c"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-c4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
			Name                  = "gandalf-c4-2c"
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
			snapshot_id           = "snap-0cf5858c985a3aec1"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-c4-2c"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-i4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-i4-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0e58b42297f6838f3"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-i4-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-d4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-d4-2c"
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
			snapshot_id           = "snap-08c0e6bd6598e2df1"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-d4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-r4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-r4-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0676f885e1a55bb76"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-r4-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-a4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-a4-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0fcfe8a145b8b1aae"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-a4-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-e4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-e4-2c"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0e4544e20618fe236"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-e4-2c"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-k4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "gandalf-k4-2c"
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-064c1944710b73f54"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "gandalf-k4-2c"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-g4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-g4-2c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0014f04ec14a67245"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-g4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-n4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-n4-2c"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0f0f2662d0e3f24a9"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-n4-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-m4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-m4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0ac6001dcc3de3348"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-m4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-q4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
			Name                  = "gandalf-q4-2c"
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
			snapshot_id           = "snap-0bcf7ed27dcb95f62"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-q4-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-l4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-l4-2c"
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
			snapshot_id           = "snap-0dc807d5467a37665"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-l4-2c"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-o4-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.gandalf-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-o4-2c"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-08d2279c005cfdd0f"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "gandalf-o4-2c"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-a1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "gandalf-a1-2b"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
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
			snapshot_id           = "snap-639120a1"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "gandalf-a1-2b"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-b1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-b1-2b"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-20dd72e2"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "gandalf-b1-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-c2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-c2-2b"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-2add72e8"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-c2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-d1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			MongoDbMemberState    = "Primary"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-d1-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-29dd72eb"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-d1-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-e1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "gandalf-e1-2b"
			MongoDbMemberState    = "Primary"
			Cluster               = "Gandalf"
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
			snapshot_id           = "snap-9901a05b"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-e1-2b"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-f2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Primary"
			Name                  = "gandalf-f2-2b"
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
			snapshot_id           = "snap-c2b01c07"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-f2-2b"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-g2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-g2-2b"
			MongoDbMemberState    = "Primary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-c7682d05"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-g2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-h2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Primary"
			Name                  = "gandalf-h2-2b"
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
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-h2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-i2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-i2-2b"
			Env                   = "Prod"
			Cluster               = "Gandalf"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "gandalf-i2-2b"
			Env                   = "Prod"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-j2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Name                  = "gandalf-j2-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
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
			Name                  = "gandalf-j2-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-k1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-k1-2b"
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
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-k1-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-l1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-l1-2b"
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
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-l1-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-i3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-i3-2c"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-d3b850f1"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-i3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-j3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
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
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-j3-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-9d39e8bb"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-j3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-b3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "gandalf-b3-2c"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
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
			snapshot_id           = "snap-53f958ad"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-b3-2c"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-c3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "gandalf-c3-2c"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-1b7cf0e5"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-c3-2c"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-d3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "gandalf-d3-2c"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-eaf17c14"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "gandalf-d3-2c"
			Cluster               = "Gandalf"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-a3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
			Name                  = "gandalf-a3-2c"
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
			snapshot_id           = "snap-d9528627"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-a3-2c"
			Env                   = "Prod"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-e3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-e3-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-2f60dd16"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Name                  = "gandalf-e3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-k3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
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
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-k3-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-b2962890"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-k3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-l3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-l3-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-c9bc9a37"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "gandalf-l3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-g3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-g3-2c"
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
			snapshot_id           = "snap-9a6129bc"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Name                  = "gandalf-g3-2c"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-f3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-f3-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-aa02b493"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Name                  = "gandalf-f3-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-h3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "gandalf-h3-2c"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
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
			snapshot_id           = "snap-15f8c236"
			volume_type           = "gp2"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "gandalf-h3-2c"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-e2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-e2-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0a9120c8"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-e2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-c1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "gandalf-c1-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Primary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-749120b6"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-c1-2b"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-h1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Name                  = "gandalf-h1-2b"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Gandalf"
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
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-h1-2b"
			Env                   = "Prod"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-j1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-j1-2b"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
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
			Type                  = "MongoDb"
			Name                  = "gandalf-j1-2b"
			Env                   = "Prod"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-a2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "gandalf-a2-2b"
			MongoDbMemberState    = "Secondary"
			Cluster               = "Gandalf"
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
			snapshot_id           = "snap-1ddd72df"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "gandalf-a2-2b"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-k2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "gandalf-k2-2b"
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
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-k2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-b2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-b2-2b"
			Env                   = "Prod"
			MongoDbMemberState    = "Primary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-689120aa"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Gandalf"
			Name                  = "gandalf-b2-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-d2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Name                  = "gandalf-d2-2b"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-7d9120bf"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-d2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-i1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-i1-2b"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "Gandalf"
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
			Type                  = "MongoDb"
			Name                  = "gandalf-i1-2b"
			Env                   = "Prod"
			Cluster               = "Gandalf"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-g1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "gandalf-g1-2b"
			Cluster               = "Gandalf"
			MongoDbMemberState    = "Secondary"
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
			Name                  = "gandalf-g1-2b"
			Cluster               = "Gandalf"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-l2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "gandalf-l2-2b"
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
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "gandalf-l2-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "gandalf-f1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.8xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	placement_group             = "${module.placementgroup.gandalf-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-f1-2b"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Secondary"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-099120cb"
			volume_type           = "io1"
			volume_size           = 2048
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Gandalf"
			Env                   = "Prod"
			Name                  = "gandalf-f1-2b"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


