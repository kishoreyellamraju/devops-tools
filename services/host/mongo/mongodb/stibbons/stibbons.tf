resource "aws_instance" "stibbons-b3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-b.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Vpc                   = "Yes"
			Name                  = "stibbons-b3"
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
			snapshot_id           = "snap-17eff435"
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Name                  = "stibbons-b3"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-a3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-a.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Name                  = "stibbons-a3"
			Env                   = "Prod"
			Cluster               = "Stibbons"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-f0e2f7d2"
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Name                  = "stibbons-a3"
			Env                   = "Prod"
			Cluster               = "Stibbons"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-c3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-c.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stibbons"
			MongoDbMemberState    = "Secondary"
			Name                  = "stibbons-c3"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-81166cb8"
			volume_type           = "gp2"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Stibbons"
			Name                  = "stibbons-c3"
			Type                  = "MongoDb"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-d3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-d.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "stibbons-d3"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
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
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "stibbons-d3"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-f3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-f.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Vpc                   = "Yes"
			Name                  = "stibbons-f3"
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
			Cluster               = "Stibbons"
			Name                  = "stibbons-f3"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-e3" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.2xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-e.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-reporting-id}","${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "stibbons-e3"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
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
			Name                  = "stibbons-e3"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-e2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-e.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stibbons"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Name                  = "stibbons-e2"
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
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Name                  = "stibbons-e2"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-b1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-b.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Name                  = "stibbons-b1"
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
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Name                  = "stibbons-b1"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-f2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-f.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stibbons"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Name                  = "stibbons-f2"
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
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Stibbons"
			Type                  = "MongoDb"
			Name                  = "stibbons-f2"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-c1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-c.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stibbons"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "stibbons-c1"
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
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Stibbons"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "stibbons-c1"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-a1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-a.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Name                  = "stibbons-a1"
			Vpc                   = "Yes"
			MongoDbMemberState    = "Secondary"
			Env                   = "Prod"
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
			Cluster               = "Stibbons"
			Name                  = "stibbons-a1"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-d2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-d.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stibbons"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Name                  = "stibbons-d2"
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
			Cluster               = "Stibbons"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "stibbons-d2"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-a2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-a.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Primary"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Name                  = "stibbons-a2"
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
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Name                  = "stibbons-a2"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-b2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-b.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "stibbons-b2"
			Cluster               = "Stibbons"
			MongoDbMemberState    = "Primary"
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
			Name                  = "stibbons-b2"
			Cluster               = "Stibbons"
			Type                  = "MongoDb"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-c2" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-c.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoDb"
			Name                  = "stibbons-c2"
			MongoDbMemberState    = "Primary"
			Env                   = "Prod"
			Cluster               = "Stibbons"
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
			Name                  = "stibbons-c2"
			Env                   = "Prod"
			Cluster               = "Stibbons"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-d1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-d.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "stibbons-d1"
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
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Stibbons"
			Env                   = "Prod"
			Type                  = "MongoDb"
			Name                  = "stibbons-d1"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "stibbons-e1" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "r3.4xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata-e.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.stibbons-id}"
	vpc_security_group_ids      = ["${module.sg.production-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "stibbons-e1"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
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
			snapshot_id           = ""
			volume_type           = "io1"
			volume_size           = 1024
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "stibbons-e1"
			Type                  = "MongoDb"
			Cluster               = "Stibbons"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
