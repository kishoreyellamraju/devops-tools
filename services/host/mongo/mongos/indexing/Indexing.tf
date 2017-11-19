resource "aws_instance" "prod-ind-mongos01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoS"
			Vpc                   = "Yes"
			Cluster               = "Indexing"
			Env                   = "Prod"
			Name                  = "prod-ind-mongos01-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Type                  = "MongoS"
			Cluster               = "Indexing"
			Env                   = "Prod"
			Name                  = "prod-ind-mongos01-b"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-ind-mongos01-c" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			Cluster               = "Indexing"
			Type                  = "MongoS"
			Vpc                   = "Yes"
			Name                  = "prod-ind-mongos01-c"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		volume_tags {
			Env                   = "Prod"
			Cluster               = "Indexing"
			Type                  = "MongoS"
			Name                  = "prod-ind-mongos01-c"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
