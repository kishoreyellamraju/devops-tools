resource "aws_instance" "prod-vault-db-a01" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.vault-id}"
	vpc_security_group_ids      = ["${module.sg.production-vault-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Cluster               = "Vault"
			Type                  = "MongoDb"
			Vpc                   = "Yes"
			Env                   = "Prod"
			MongoDbMemberState    = "Primary"
			Name                  = "prod-vault-db-a01"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-4cd3e489"
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Vault"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "prod-vault-db-a01"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-vault-db-a02" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetb-id}"
	placement_group             = "${module.placementgroup.vault-id}"
	vpc_security_group_ids      = ["${module.sg.production-vault-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Vpc                   = "Yes"
			Cluster               = "Vault"
			Type                  = "MongoDb"
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Name                  = "prod-vault-db-a02"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-8eb907b7"
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Vault"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "prod-vault-db-a02"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-vault-db-a03" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	vpc_security_group_ids      = ["${module.sg.production-vault-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			Env                   = "Prod"
			MongoDbMemberState    = "Secondary"
			Vpc                   = "Yes"
			Type                  = "MongoDb"
			Cluster               = "Vault"
			Name                  = "prod-vault-db-a03"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-4cd3e489"
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Env                   = "Prod"
			Type                  = "MongoDb"
			Cluster               = "Vault"
			Name                  = "prod-vault-db-a03"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_instance" "prod-vault-db-a04" {
	ami                         = "${var.ami}"
	ebs_optimized               = false
	instance_type               = "r3.large"
	monitoring                  = false
	key_name                    = "${var.key_name}"
  user_data 					 				= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.databaseprivatesubnetc-id}"
	placement_group             = "${module.placementgroup.vault-c-id}"
	vpc_security_group_ids      = ["${module.sg.production-vault-db-id}"]
	associate_public_ip_address = false
	source_dest_check           = true

		tags {
			MongoDbMemberState    = "Secondary"
			Cluster               = "Vault"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "prod-vault-db-a04"
			Vpc                   = "Yes"
		}

		root_block_device {
			volume_type           = "gp2"
			volume_size           = 32
			delete_on_termination = true
		}

		ebs_block_device {
			device_name           = "/dev/sdf"
			snapshot_id           = "snap-0fb019375c6af8ae6"
			volume_type           = "gp2"
			volume_size           = 100
			delete_on_termination = false
		}
		volume_tags {
			Cluster               = "Vault"
			Type                  = "MongoDb"
			Env                   = "Prod"
			Name                  = "prod-vault-db-a04"
		}
}

###################################################################################################
###################################################################################################
###################################################################################################
