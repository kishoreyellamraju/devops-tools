resource "aws_instance" "sidekiq-app-worker" {
	count 											= "${var.sidekiq_count}"
	ami                         = "${var.sidekiq_ami}"
	ebs_optimized               = "${var.sidekiq_ebs_optimized}"
	instance_type               = "${var.sidekiq_instance_type}"
	monitoring                  = "${var.sidekiq_monitoring}"
	key_name                    = "${var.sidekiq_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.apppublicsubnetb-id}"
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

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}
}
###################################################################################################
###################################################################################################
###################################################################################################
#########################################################
#  				Outputs
#########################################################

output "sidekiq-app-worker" {
  value = "${join(",", aws_instance.sidekiq-app-worker.*.id)}"
}
