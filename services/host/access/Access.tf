resource "aws_instance" "spark-access01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.sparkemrpublic1b-id}"
	vpc_security_group_ids      = ["${module.sg.spark-access-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "spark-access01-b"
			Env                   = "Spark"
			Type                  = "Access"
			Cluster               = "Access"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "spark-access01-b"
			Env                   = "Spark"
			Type                  = "Access"
			Cluster               = "Access"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-access01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "t2.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.publicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-access-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "prod-access01-c"
			Cluster               = "Access"
			Type                  = "Access"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-85db6847"
			volume_type           = "standard"
			volume_size           = 32
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-access01-c"
			Cluster               = "Access"
			Type                  = "Access"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-access01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "t2.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.publicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-access-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "prod-access01-b"
			Env                   = "Prod"
			Type                  = "Access"
			Cluster               = "Access"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-85db6847"
			volume_type           = "standard"
			volume_size           = 32
			delete_on_termination = false
		}
		volume_tags {
			Name                  = "prod-access01-b"
			Env                   = "Prod"
			Type                  = "Access"
			Cluster               = "Access"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
