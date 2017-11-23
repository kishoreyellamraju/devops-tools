######################## sidekiq cluster ######################################
resource "aws_instance" "sidekiq-batch" {
	count 											= "${var.sidekiq_count}"
	ami                         = "${var.sidekiq_ami}"
	ebs_optimized               = "${var.sidekiq_ebs_optimized}"
	instance_type               = "${var.sidekiq_instance_type}"
	monitoring                  = "${var.sidekiq_monitoring}"
	key_name                    = "${var.sidekiq_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetb-id,module.subnet.apppublicsubnetc-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = "${var.sidekiq_associate_public_ip_address}"
	source_dest_check           = "${var.sidekiq_source_dest_check}"

		tags {
			Type                  = "${var.sidekiq_tag-type}"
			Env                   = "${var.sidekiq_env}"
			Cluster               = "${var.sidekiq_tag-cluster}"
			Vpc                   = "${var.sidekiq_tag-vpc}"
			Name                  = "${var.sidekiq_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		volume_tags {
			Env                   = "${var.sidekiq_env}"
			Name                  = "${var.sidekiq_tag-name}-${count.index}${element(var.az, count.index)}"
			Type                  = "${var.sidekiq_tag-type}"
			Cluster               = "${var.sidekiq_tag-cluster}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}

		ebs_block_device {
			device_name           = "${var.sidekiq_ebs-device_name}"
			volume_type           = "${var.ebs-volume_type}"
			volume_size           = "${var.ebs-volume_size}"
			delete_on_termination = "${var.ebs-volume-delete_on_termination}"
		}
}

#########################################################
#  				Outputs
#########################################################

output "sidekiq-batch-ids" {
  value = "${join(",", aws_instance.sidekiq-batch.*.id)}"
}

######################## yaga cluster ######################################
resource "aws_instance" "yaga-batch" {
	count 											= "${var.yaga_count}"
	ami                         = "${var.yaga_ami}"
	ebs_optimized               = "${var.yaga_ebs_optimized}"
	instance_type               = "${var.yaga_instance_type}"
	monitoring                  = "${var.yaga_monitoring}"
	key_name                    = "${var.yaga_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetb-id,module.subnet.apppublicsubnetc-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-batch-id}"]
	associate_public_ip_address = "${var.yaga_associate_public_ip_address}"
	source_dest_check           = "${var.yaga_source_dest_check}"

		tags {
			Type                  = "${var.yaga_tag-type}"
			Env                   = "${var.yaga_env}"
			Cluster               = "${var.yaga_tag-cluster}"
			Vpc                   = "${var.yaga_tag-vpc}"
			Name                  = "${var.yaga_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		volume_tags {
			Env                   = "${var.yaga_env}"
			Name                  = "${var.yaga_tag-name}-${count.index}${element(var.az, count.index)}"
			Type                  = "${var.yaga_tag-type}"
			Cluster               = "${var.yaga_tag-cluster}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}

}

#########################################################
#  				Outputs
#########################################################

output "yaga-batch-ids" {
  value = "${join(",", aws_instance.yaga-batch.*.id)}"
}

######################## prod cluster ######################################
resource "aws_instance" "prod-batch" {
	count 											= "${var.prod_count}"
	ami                         = "${var.prod_ami}"
	ebs_optimized               = "${var.prod_ebs_optimized}"
	instance_type               = "${var.prod_instance_type}"
	monitoring                  = "${var.prod_monitoring}"
	key_name                    = "${var.prod_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetb-id,module.subnet.apppublicsubnetc-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-batch-id}"]
	associate_public_ip_address = "${var.prod_associate_public_ip_address}"
	source_dest_check           = "${var.prod_source_dest_check}"

		tags {
			Type                  = "${var.prod_tag-type}"
			Env                   = "${var.prod_env}"
			Cluster               = "${var.prod_tag-cluster}"
			Vpc                   = "${var.prod_tag-vpc}"
			Name                  = "${var.prod_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		volume_tags {
			Env                   = "${var.prod_env}"
			Name                  = "${var.prod_tag-name}-${count.index}${element(var.az, count.index)}"
			Type                  = "${var.prod_tag-type}"
			Cluster               = "${var.prod_tag-cluster}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}

}

#########################################################
#  				Outputs
#########################################################

output "prod-batch-ids" {
  value = "${join(",", aws_instance.prod-batch.*.id)}"
}

######################## prod-co cluster(commercebatch) ######################################
resource "aws_instance" "prod-co-batch" {
	count 											= "${var.prod-co_count}"
	ami                         = "${var.prod-co_ami}"
	ebs_optimized               = "${var.prod-co_ebs_optimized}"
	instance_type               = "${var.prod-co_instance_type}"
	monitoring                  = "${var.prod-co_monitoring}"
	key_name                    = "${var.prod-co_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetb-id,module.subnet.apppublicsubnetc-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.prod-couction-batch-id}"]
	associate_public_ip_address = "${var.prod-co_associate_public_ip_address}"
	source_dest_check           = "${var.prod-co_source_dest_check}"

		tags {
			Type                  = "${var.prod-co_tag-type}"
			Env                   = "${var.prod-co_env}"
			Cluster               = "${var.prod-co_tag-cluster}"
			Vpc                   = "${var.prod-co_tag-vpc}"
			Name                  = "${var.prod-co_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		volume_tags {
			Env                   = "${var.prod-co_env}"
			Name                  = "${var.prod-co_tag-name}-${count.index}${element(var.az, count.index)}"
			Type                  = "${var.prod-co_tag-type}"
			Cluster               = "${var.prod-co_tag-cluster}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}

}

#########################################################
#  				Outputs
#########################################################

output "prod-co-batch-ids" {
  value = "${join(",", aws_instance.prod-co-batch.*.id)}"
}
