resource "aws_instance" "prod-twemproxy01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-twemproxy01-2b"
			Type                  = "TwemProxy"
			Cluster               = "TwemProxy"
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
			volume_size           = 160
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "prod-twemproxy01-2b"
			Type                  = "TwemProxy"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-twemproxy02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "TwemProxy"
			Name                  = "prod-twemproxy02-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "TwemProxy"
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
			volume_size           = 160
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "TwemProxy"
			Name                  = "prod-twemproxy02-2b"
			Env                   = "Prod"
			Cluster               = "TwemProxy"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-twemproxy03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
			Name                  = "prod-twemproxy03-2b"
			Type                  = "TwemProxy"
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
			volume_size           = 120
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "TwemProxy"
			Env                   = "Prod"
			Name                  = "prod-twemproxy03-2b"
			Type                  = "TwemProxy"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-twemproxy04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "TwemProxy"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
			Name                  = "prod-twemproxy04-2b"
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
			volume_size           = 120
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "TwemProxy"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
			Name                  = "prod-twemproxy04-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-twemproxy06-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Cerberus"
			Type                  = "TwemProxy"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "cerberus-twemproxy06-2b"
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
			Cluster               = "Cerberus"
			Type                  = "TwemProxy"
			Env                   = "Prod"
			Name                  = "cerberus-twemproxy06-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-twemproxy05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "cerberus-twemproxy05-2b"
			Env                   = "Prod"
			Type                  = "TwemProxy"
			Cluster               = "Cerberus"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "cerberus-twemproxy05-2b"
			Env                   = "Prod"
			Type                  = "TwemProxy"
			Cluster               = "Cerberus"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


