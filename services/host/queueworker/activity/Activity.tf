resource "aws_instance" "prod-act-qw" {
	count 											= "${var.count}"
	ami                         = "${var.ami}"
	ebs_optimized               = "${var.ebs_optimized}"
	instance_type               = "${var.instance_type}"
	monitoring                  = "${var.monitoring}"
	key_name                    = "${var.key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(module.subnet.appsubnets, count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-qw-id}"]
	associate_public_ip_address = "${var.associate_public_ip_address}"
	source_dest_check           = "${var.source_dest_check}"

		tags {
			Type                  = "${var.tag-type}"
			Env                   = "${var.env}"
			Cluster               = "${var.tag-cluster}"
			Vpc                   = "${var.tag-vpc}"
			Name                  = "${count.index} < 10 ? ${var.tag-name}-0${count.index}-${element(var.az, count.index)} : ${var.tag-name}-${count.index}-${element(var.az, count.index)}"
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

output "prod-act-qw-ids" {
  value = "${join(",", aws_instance.prod-act-qw.*.id)}"
}
