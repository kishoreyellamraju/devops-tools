resource "aws_instance" "prod-smr-qw" {
	count                       = "${var.count}"
	ami                         = "${var.ami}"
	ebs_optimized               = "${var.ebs_optimized}"
	instance_type               = "${var.instance_type}"
	iam_instance_profile        = "${var.iam_instance_profile}"
	monitoring                  = "${var.monitoring}"
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetc-id,module.subnet.apppublicsubnetb-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = "${var.associate_public_ip_address}"
	source_dest_check           = "${var.source_dest_check}"

		tags {
			Env                   = "${var.tag-env}"
			Cluster               = "${var.tag-cluster}"
			Name                  = "${var.tag-name}${count.index}-${element(var.az, count.index)}"
			Vpc                   = "${var.tag-vpc}"
			Type                  = "${var.tag-type}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-delete_on_termination}"
		}

		volume_tags {
			Env                   = "${var.tag-env}"
			Cluster               = "${var.tag-cluster}"
			Name                  = "${var.tag-name}${count.index}-${element(var.az, count.index)}"
			Type                  = "${var.tag-type}"
		}
}

#########################################################
# Outputs
#########################################################

output "prod-smr-qw-ids" {
	value="${aws_instance.prod-smr-qw.*.id}"
}

