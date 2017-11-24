resource "aws_instance" "yaga-c27-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c27-2b"
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
			Name                  = "yaga-c27-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c28-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c28-2b"
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
			Name                  = "yaga-c28-2b"
			Cluster               = "Yaga"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c29-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c29-2b"
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
			Name                  = "yaga-c29-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c30-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c30-2b"
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
			Name                  = "yaga-c30-2b"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c31-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Type                  = "Collector"
			Name                  = "yaga-c31-2b"
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
			Name                  = "yaga-c31-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c32-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c32-2b"
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
			Name                  = "yaga-c32-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c33-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c33-2b"
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
			Name                  = "yaga-c33-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c34-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Type                  = "Collector"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Name                  = "yaga-c34-2b"
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
			Name                  = "yaga-c34-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c35-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c35-2b"
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
			Name                  = "yaga-c35-2b"
			Type                  = "Collector"
			Env                   = "Prod"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c36-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c36-2b"
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
			Name                  = "yaga-c36-2b"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c37-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c37-2b"
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
			Name                  = "yaga-c37-2b"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c38-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c38-2b"
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
			Name                  = "yaga-c38-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c39-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c39-2b"
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
			Name                  = "yaga-c39-2b"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c40-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c40-2b"
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
			Name                  = "yaga-c40-2b"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c41-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c41-2b"
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
			Name                  = "yaga-c41-2b"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c42-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c42-2b"
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
			Name                  = "yaga-c42-2b"
			Cluster               = "Yaga"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c43-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c43-2b"
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
			Name                  = "yaga-c43-2b"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c44-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c44-2b"
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
			Name                  = "yaga-c44-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c45-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c45-2b"
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
			Name                  = "yaga-c45-2b"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c46-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c46-2b"
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
			Name                  = "yaga-c46-2b"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c47-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Name                  = "yaga-c47-2b"
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
			Name                  = "yaga-c47-2b"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c48-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c48-2b"
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
			Name                  = "yaga-c48-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c49-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c49-2b"
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
			Name                  = "yaga-c49-2b"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c50-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c50-2b"
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
			Name                  = "yaga-c50-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c26-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c26-2b"
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
			Name                  = "yaga-c26-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "Collector"
			Name                  = "yaga-c01-2b"
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
			Name                  = "yaga-c01-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c12-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c12-2b"
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
			Name                  = "yaga-c12-2b"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c19-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "yaga-c19-2b"
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
			Name                  = "yaga-c19-2b"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c16-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c16-2b"
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
			Name                  = "yaga-c16-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c15-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Name                  = "yaga-c15-2b"
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
			Name                  = "yaga-c15-2b"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c18-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c18-2b"
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
			Name                  = "yaga-c18-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c24-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c24-2b"
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
			Name                  = "yaga-c24-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c09-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c09-2b"
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
			Name                  = "yaga-c09-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c06-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Collector"
			Vpc                   = "Yes"
			Name                  = "yaga-c06-2b"
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
			Name                  = "yaga-c06-2b"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c11-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c11-2b"
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
			Name                  = "yaga-c11-2b"
			Env                   = "Prod"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c14-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c14-2b"
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
			Name                  = "yaga-c14-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c21-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c21-2b"
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
			Name                  = "yaga-c21-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c08-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c08-2b"
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
			Name                  = "yaga-c08-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Yaga"
			Name                  = "yaga-c04-2b"
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
			Name                  = "yaga-c04-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c03-2b"
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
			Name                  = "yaga-c03-2b"
			Type                  = "Collector"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c10-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "Collector"
			Name                  = "yaga-c10-2b"
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
			Name                  = "yaga-c10-2b"
			Cluster               = "Yaga"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c13-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c13-2b"
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
			Name                  = "yaga-c13-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c07-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Name                  = "yaga-c07-2b"
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
			Name                  = "yaga-c07-2b"
			Env                   = "Prod"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Vpc                   = "Yes"
			Env                   = "Prod"
			Type                  = "Collector"
			Name                  = "yaga-c02-2b"
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
			Name                  = "yaga-c02-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c20-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c20-2b"
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
			Name                  = "yaga-c20-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Name                  = "yaga-c05-2b"
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
			Name                  = "yaga-c05-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c25-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c25-2b"
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
			Name                  = "yaga-c25-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c23-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Yaga"
			Type                  = "Collector"
			Name                  = "yaga-c23-2b"
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
			Name                  = "yaga-c23-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c22-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "yaga-c22-2b"
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
			Name                  = "yaga-c22-2b"
			Env                   = "Prod"
			Type                  = "Collector"
			Cluster               = "Yaga"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "yaga-c17-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Cluster               = "Yaga"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "yaga-c17-2b"
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
			Name                  = "yaga-c17-2b"
			Type                  = "Collector"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


