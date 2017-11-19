resource "aws_instance" "prod-cup-qw01-b" {
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
			Vpc                   = "Yes"
			Name                  = "prod-cup-qw01-b"
			Env                   = "Prod"
			Cluster               = "CollectionUserPostIndexing"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "QueueWorker"
			Name                  = "prod-cup-qw01-b"
			Env                   = "Prod"
			Cluster               = "CollectionUserPostIndexing"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-cup-qw01-c" {
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
			Vpc                   = "Yes"
			Name                  = "prod-cup-qw01-c"
			Env                   = "Prod"
			Cluster               = "CollectionUserPostIndexing"
			Type                  = "QueueWorker"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Name                  = "prod-cup-qw01-c"
			Env                   = "Prod"
			Cluster               = "CollectionUserPostIndexing"
			Type                  = "QueueWorker"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
