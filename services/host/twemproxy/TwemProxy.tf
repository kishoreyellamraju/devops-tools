resource "aws_instance" "prod-twemproxy01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "prod-twemproxy01"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "prod-twemproxy01"
			Type                  = "TwemProxy"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-twemproxy02" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "TwemProxy"
			Name                  = "prod-twemproxy02"
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
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Type                  = "TwemProxy"
			Name                  = "prod-twemproxy02"
			Env                   = "Prod"
			Cluster               = "TwemProxy"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-twemproxy03" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
			Name                  = "prod-twemproxy03"
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
			Name                  = "prod-twemproxy03"
			Type                  = "TwemProxy"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-twemproxy04" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "TwemProxy"
			Cluster               = "TwemProxy"
			Env                   = "Prod"
			Name                  = "prod-twemproxy04"
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
			Name                  = "prod-twemproxy04"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-twemproxy06" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
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
			Name                  = "cerberus-twemproxy06"
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
			Name                  = "cerberus-twemproxy06"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "cerberus-twemproxy05" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "m4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.cerberus-id}"
	vpc_security_group_ids      = ["${module.sg.cerberus-twemproxy-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "cerberus-twemproxy05"
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
			Name                  = "cerberus-twemproxy05"
			Env                   = "Prod"
			Type                  = "TwemProxy"
			Cluster               = "Cerberus"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


