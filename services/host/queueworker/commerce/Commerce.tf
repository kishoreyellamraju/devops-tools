resource "aws_instance" "prod-co-qw19-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Elastic               = "Afternoon"
			Type                  = "QueueWorker"
			Name                  = "prod-co-qw19-b"
			Vpc                   = "Yes"
			Cluster               = "Commerce"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-co-qw19-b"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw18-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-qw18-c"
			Elastic               = "Afternoon"
			Vpc                   = "Yes"
			Cluster               = "Commerce"
			Type                  = "QueueWorker"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-qw18-c"
			Cluster               = "Commerce"
			Type                  = "QueueWorker"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw19-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Elastic               = "Afternoon"
			Name                  = "prod-co-qw19-c"
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-qw19-c"
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw11-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Commerce"
			Name                  = "prod-co-qw11-b"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Cluster               = "Commerce"
			Name                  = "prod-co-qw11-b"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw12-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Name                  = "prod-co-qw12-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Env                   = "Prod"
			Name                  = "prod-co-qw12-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw13-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw13-b"
			Cluster               = "Commerce"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw13-b"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw14-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw14-b"
			Cluster               = "Commerce"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw14-b"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw15-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-qw15-b"
			Cluster               = "Commerce"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Elastic               = "Morning"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-qw15-b"
			Cluster               = "Commerce"
			Env                   = "Prod"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw16-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Commerce"
			Elastic               = "Morning"
			Name                  = "prod-co-qw16-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "Commerce"
			Name                  = "prod-co-qw16-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw17-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-qw17-b"
			Elastic               = "Afternoon"
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-qw17-b"
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw18-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Vpc                   = "Yes"
			Elastic               = "Afternoon"
			Name                  = "prod-co-qw18-b"
			Cluster               = "Commerce"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Type                  = "QueueWorker"
			Name                  = "prod-co-qw18-b"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw11-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-qw11-c"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "Commerce"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-qw11-c"
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw13-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Name                  = "prod-co-qw13-c"
			Vpc                   = "Yes"
			Env                   = "Prod"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Name                  = "prod-co-qw13-c"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw14-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw14-c"
			Cluster               = "Commerce"
			Vpc                   = "Yes"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw14-c"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw15-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Vpc                   = "Yes"
			Cluster               = "Commerce"
			Name                  = "prod-co-qw15-c"
			Elastic               = "Morning"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Cluster               = "Commerce"
			Name                  = "prod-co-qw15-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw16-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Name                  = "prod-co-qw16-c"
			Type                  = "QueueWorker"
			Elastic               = "Morning"
			Cluster               = "Commerce"
			Env                   = "Prod"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-co-qw16-c"
			Type                  = "QueueWorker"
			Cluster               = "Commerce"
			Env                   = "Prod"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw17-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-co-qw17-c"
			Cluster               = "Commerce"
			Vpc                   = "Yes"
			Elastic               = "Afternoon"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-co-qw17-c"
			Cluster               = "Commerce"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw12-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Name                  = "prod-co-qw12-c"
			Cluster               = "Commerce"
			Vpc                   = "Yes"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Name                  = "prod-co-qw12-c"
			Cluster               = "Commerce"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-co-qw20-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "m3.medium"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = true
	source_dest_check           = true

		tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw20-b"
			Elastic               = "Afternoon"
			Vpc                   = "Yes"
			Cluster               = "Commerce"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Env                   = "Prod"
			Name                  = "prod-co-qw20-b"
			Cluster               = "Commerce"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
