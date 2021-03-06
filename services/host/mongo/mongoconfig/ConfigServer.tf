resource "aws_instance" "prod-configsvr2-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-configsvr-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-configsvr2-2b"
			Cluster               = "ConfigServer"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "MongoConfigsvr"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "prod-configsvr2-2b"
			Cluster               = "ConfigServer"
			Env                   = "Prod"
			Type                  = "MongoConfigsvr"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-configsvr1-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-configsvr-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "MongoConfigsvr"
			Name                  = "prod-configsvr1-2b"
			Vpc                   = "Yes"
			Cluster               = "ConfigServer"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoConfigsvr"
			Name                  = "prod-configsvr1-2b"
			Cluster               = "ConfigServer"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-configsvr3-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.xlarge"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-configsvr-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-configsvr3-2c"
			Cluster               = "ConfigServer"
			Type                  = "MongoConfigsvr"
			Vpc                   = "Yes"
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
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "prod-configsvr3-2c"
			Cluster               = "ConfigServer"
			Type                  = "MongoConfigsvr"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


