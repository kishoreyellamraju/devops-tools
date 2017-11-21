resource "aws_instance" "prod-squid01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-squid-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-squid01"
			Type                  = "SquidProxy"
			Env                   = "Prod"
			Cluster               = "Squid"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-squid01"
			Type                  = "SquidProxy"
			Env                   = "Prod"
			Cluster               = "Squid"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-squid02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-squid-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "SquidProxy"
			Name                  = "prod-squid02"
			Cluster               = "Squid"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "SquidProxy"
			Name                  = "prod-squid02"
			Cluster               = "Squid"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
