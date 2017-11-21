resource "aws_instance" "mocha-c01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c01-c"
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
			Name                  = "mocha-c01-c"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c02-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c02-c"
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
			Name                  = "mocha-c02-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c03-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-c03-c"
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
			Name                  = "mocha-c03-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c04-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c04-c"
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
			Name                  = "mocha-c04-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c05-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c05-c"
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
			Name                  = "mocha-c05-c"
			Env                   = "Prod"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c06-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Name                  = "mocha-c06-b"
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
			Name                  = "mocha-c06-b"
			Cluster               = "Mocha"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c07-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c07-b"
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
			Name                  = "mocha-c07-b"
			Env                   = "Prod"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c12-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c12-c"
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
			Name                  = "mocha-c12-c"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c14-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Name                  = "mocha-c14-c"
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
			Name                  = "mocha-c14-c"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c15-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "mocha-c15-c"
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
			Name                  = "mocha-c15-c"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c11-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Name                  = "mocha-c11-c"
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
			Name                  = "mocha-c11-c"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c13-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c13-c"
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
			Name                  = "mocha-c13-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c15-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c15-b"
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
			Name                  = "mocha-c15-b"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c11-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c11-b"
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
			Name                  = "mocha-c11-b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c13-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c13-b"
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
			Name                  = "mocha-c13-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c12-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c12-b"
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
			Name                  = "mocha-c12-b"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c14-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Name                  = "mocha-c14-b"
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
			Name                  = "mocha-c14-b"
			Env                   = "Prod"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c08-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Name                  = "mocha-c08-c"
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
			Name                  = "mocha-c08-c"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c09-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c09-c"
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
			Name                  = "mocha-c09-c"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c10-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c10-c"
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
			Name                  = "mocha-c10-c"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c01-b"
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
			Name                  = "mocha-c01-b"
			Env                   = "Prod"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c02-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "mocha-c02-b"
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
			Name                  = "mocha-c02-b"
			Type                  = "Kibana"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c03-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c03-b"
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
			Name                  = "mocha-c03-b"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c04-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Type                  = "Kibana"
			Env                   = "Prod"
			Name                  = "mocha-c04-b"
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
			Name                  = "mocha-c04-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c05-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Name                  = "mocha-c05-b"
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
			Name                  = "mocha-c05-b"
			Type                  = "Kibana"
			Env                   = "Prod"
			Cluster               = "Mocha"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c07-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Name                  = "mocha-c07-c"
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
			Name                  = "mocha-c07-c"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c10-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Env                   = "Prod"
			Cluster               = "Mocha"
			Vpc                   = "Yes"
			Name                  = "mocha-c10-b"
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
			Name                  = "mocha-c10-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c09-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c09-b"
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
			Name                  = "mocha-c09-b"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c08-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Mocha"
			Name                  = "mocha-c08-b"
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
			Name                  = "mocha-c08-b"
			Type                  = "Kibana"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "mocha-c06-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1c-id}"
	vpc_security_group_ids      = ["${module.sg.production-kibana-consumer-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "Kibana"
			Cluster               = "Mocha"
			Name                  = "mocha-c06-c"
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
			Name                  = "mocha-c06-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
