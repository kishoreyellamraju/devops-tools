resource "aws_instance" "yaga-c27" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c27"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c27"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c28" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c28"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "yaga-c28"
			Cluster               = "Yaga"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c29" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c29"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c29"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c30" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c30"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Name                  = "yaga-c30"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c31" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Type                  = "Collector"
			Name                  = "yaga-c31"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c31"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c32" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c32"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c32"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c33" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c33"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c33"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c34" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "yaga-c34"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
			Name                  = "yaga-c34"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c35" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c35"
			Type                  = "Collector"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c35"
			Type                  = "Collector"
			Env                   = "Prod"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c36" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c36"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Name                  = "yaga-c36"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c37" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c37"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c37"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c38" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c38"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c38"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c39" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c39"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c39"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c40" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c40"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "yaga-c40"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c41" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c41"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c41"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c42" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c42"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "yaga-c42"
			Cluster               = "Yaga"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c43" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c43"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c43"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c44" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c44"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c44"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c45" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c45"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Name                  = "yaga-c45"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c46" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c46"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c46"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c47" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "yaga-c47"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c47"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c48" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c48"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c48"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c49" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c49"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c49"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c50" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c50"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c50"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c26" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c26"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c26"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c01" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "Collector"
			Name                  = "yaga-c01"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c01"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c12" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c12"
			Env                   = "Prod"
			Type                  = "Collector"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c12"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c19" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c19"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "yaga-c19"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c16" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c16"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c16"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c15" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Name                  = "yaga-c15"
			Env                   = "Prod"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c15"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c18" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c18"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c18"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c24" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c24"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c24"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c09" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c09"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c09"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c06" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Collector"
			Vpc                   = "Yes"
			Name                  = "yaga-c06"
			Cluster               = "Yaga"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c06"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c11" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c11"
			Env                   = "Prod"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c11"
			Env                   = "Prod"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c14" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c14"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c14"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c21" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c21"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c21"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c08" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c08"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c08"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c04" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Name                  = "yaga-c04"
			Vpc                   = "Yes"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Name                  = "yaga-c04"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c03" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c03"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c03"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c10" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c10"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Collector"
			Name                  = "yaga-c10"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c13" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c13"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c13"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c07" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c07"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c07"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c02" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c02"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c02"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c20" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c20"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c20"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c05" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c05"
			Vpc                   = "Yes"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c05"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c25" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c25"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c25"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c23" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c23"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c23"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c22" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c22"
			Env                   = "Prod"
			Type                  = "Collector"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "yaga-c22"
			Env                   = "Prod"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c17" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c17"
			Type                  = "Collector"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c17"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
