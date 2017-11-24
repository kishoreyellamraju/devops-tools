resource "aws_instance" "mocha-c01-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c01-2c"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "mocha-c01-2c"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c02-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c02-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-c02-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c03-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-c03-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c03-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c04-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c04-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c04-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c05-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c05-2c"
			Env                   = "Prod"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c05-2c"
			Env                   = "Prod"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c06-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Name                  = "mocha-c06-2b"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Name                  = "mocha-c06-2b"
			Cluster               = "Mocha"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c07-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c07-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c07-2b"
			Env                   = "Prod"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c12-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c12-2c"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mocha-c12-2c"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c14-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Name                  = "mocha-c14-2c"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Name                  = "mocha-c14-2c"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c15-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-c15-2c"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Env                   = "Prod"
			Name                  = "mocha-c15-2c"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c11-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Name                  = "mocha-c11-2c"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Name                  = "mocha-c11-2c"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c13-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c13-2c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c13-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c15-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c15-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mocha-c15-2b"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c11-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c11-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c11-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c13-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c13-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c13-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c12-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c12-2b"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "mocha-c12-2b"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c14-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c14-2b"
			Env                   = "Prod"
			Type                  = "Kibana"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c14-2b"
			Env                   = "Prod"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c08-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Name                  = "mocha-c08-2c"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Name                  = "mocha-c08-2c"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c09-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c09-2c"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mocha-c09-2c"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c10-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c10-2c"
			Type                  = "Kibana"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "mocha-c10-2c"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c01-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c01-2b"
			Env                   = "Prod"
			Type                  = "Kibana"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mocha-c01-2b"
			Env                   = "Prod"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c02-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c02-2b"
			Type                  = "Kibana"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "mocha-c02-2b"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c03-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c03-2b"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mocha-c03-2b"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c04-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c04-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c04-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c05-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c05-2b"
			Type                  = "Kibana"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "mocha-c05-2b"
			Type                  = "Kibana"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c07-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-c07-2c"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-c07-2c"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c10-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Name                  = "mocha-c10-2b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-c10-2b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c09-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c09-2b"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c09-2b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c08-2b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c08-2b"
			Type                  = "Kibana"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-c08-2b"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c06-2c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c06-2c"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c06-2c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################


