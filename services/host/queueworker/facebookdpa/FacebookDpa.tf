resource "aws_instance" "prod-fb-dpa-qw" {
	count                       = "${var.count}"
	ami                         = "${var.ami}"
	ebs_optimized               = "${var.ebs_optimized}"
	instance_type               = "${var.instance_type}"
	iam_instance_profile        = "${var.iam_instance_profile}"
	monitoring                  = "${var.monitoring}"
	key_name                    = "${var.key_name}"
	user_data                   = "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(list(module.subnet.apppublicsubnetb-id), count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = "${var.associate_public_ip_address}"
	source_dest_check           = "${var.source_dest_check}"

		tags {
			Env                   = "${var.tag-env}"
			Name                  = "${var.tag-name}${count.index +1}-${element(var.az, count.index)}"
			Vpc                   = "${var.tag-vpc}"
			Cluster               = "${var.tag-cluster}"
			Type                  = "${var.tag-type}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-delete_on_termination}"
		}

		volume_tags {
			Env                   = "${var.tag-env}"
			Name                  = "${var.tag-name}${count.index +1}-${element(var.az, count.index)}"
			Cluster               = "${var.tag-cluster}"
			Type                  = "${var.tag-type}"
		}
}

#########################################################
# Outputs
#########################################################

output "prod-fb-dpa-qw-ids" {
	value="${aws_instance.prod-fb-dpa-qw.*.id}"
}
