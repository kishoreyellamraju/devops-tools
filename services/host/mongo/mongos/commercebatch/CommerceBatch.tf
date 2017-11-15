resource "aws_instance" "prod-co-batch-mongos01-b" {
	ami                         = "${var.ami}"
	ebs_optimized               = true
	instance_type               = "c4.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
	subnet_id                   = "${module.subnet.searchprivatesubnet1b-id}"
	vpc_security_group_ids      = ["${module.sg.production-mongos-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Type                  = "MongoS"
			Vpc                   = "Yes"
			Cluster               = "CommerceBatch"
			Env                   = "Prod"
			Name                  = "prod-co-batch-mongos01-b"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

}

###################################################################################################
###################################################################################################
###################################################################################################
