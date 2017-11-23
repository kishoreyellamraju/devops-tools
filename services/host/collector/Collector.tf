######################## collector cluster ######################################
resource "aws_instance" "yaga-c" {
	count 											= "${var.yaga_count}"
	ami                         = "${var.yaga_ami}"
	ebs_optimized               = "${var.yaga_ebs_optimized}"
	instance_type               = "${var.yaga_instance_type}"
	monitoring                  = "${var.yaga_monitoring}"
	key_name                    = "${var.yaga_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetb-id,module.subnet.apppublicsubnetc-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-yaga-consumer-id}"]
	associate_public_ip_address = "${var.yaga_associate_public_ip_address}"
	source_dest_check           = "${var.yaga_source_dest_check}"

		tags {
			Type                  = "${var.yaga_tag-type}"
			Env                   = "${var.yaga_env}"
			Cluster               = "${var.yaga_tag-cluster}"
			Vpc                   = "${var.yaga_tag-vpc}"
			Name                  = "${var.yaga_tag-name}${count.index}-${element(var.az, count.index)}"
		}

		volume_tags {
			Env                   = "${var.yaga_env}"
			Name                  = "${var.yaga_tag-name}${count.index}-${element(var.az, count.index)}"
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

output "yaga-c-ids" {
  value = "${join(",", aws_instance.yaga-c.*.id)}"
}
