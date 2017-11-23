
resource "aws_instance" "spark-access" {
	count 											= "${var.spark_count}"
	ami                         = "${var.spark_ami}"
	ebs_optimized               = "${var.spark_ebs_optimized}"
	instance_type               = "${var.spark_instance_type}"
	monitoring                  = "${var.spark_monitoring}"
	key_name                    = "${var.spark_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${module.subnet.spark-access-id}"
	vpc_security_group_ids      = ["${module.sg.production-app-id}"]
	associate_public_ip_address = "${var.spark_associate_public_ip_address}"
	source_dest_check           = "${var.spark_source_dest_check}"

		tags {
			Type                  = "${var.spark_tag-type}"
			Env                   = "${var.spark_env}"
			Cluster               = "${var.spark_tag-cluster}"
			Vpc                   = "${var.spark_tag-vpc}"
			Name                  = "${var.spark_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}
}
###############################POSHMARK#####################################3
resource "aws_instance" "poshmark-access" {
	count 											= "${var.poshmark_count}"
	ami                         = "${var.poshmark_ami}"
	ebs_optimized               = "${var.poshmark_ebs_optimized}"
	instance_type               = "${var.poshmark_instance_type}"
	monitoring                  = "${var.poshmark_monitoring}"
	key_name                    = "${var.poshmark_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(module.subnet.accesssubnets, count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-access-id}"]
	associate_public_ip_address = "${var.poshmark_associate_public_ip_address}"
	source_dest_check           = "${var.poshmark_source_dest_check}"

		tags {
			Type                  = "${var.poshmark_tag-type}"
			Env                   = "${var.poshmark_env}"
			Cluster               = "${var.poshmark_tag-cluster}"
			Vpc                   = "${var.poshmark_tag-vpc}"
			Name                  = "${var.poshmark_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}
}

###############################################################################
resource "aws_instance" "poshmark-gateway" {
	count 											= "${var.poshmark_gateway_count}"
	ami                         = "${var.poshmark_gateway_ami}"
	ebs_optimized               = "${var.poshmark_gateway_ebs_optimized}"
	instance_type               = "${var.poshmark_gateway_instance_type}"
	monitoring                  = "${var.poshmark_gateway_monitoring}"
	key_name                    = "${var.poshmark_gateway_key_name}"
  user_data 									= "${file("${path.root}/userdata.sh")}"
	subnet_id                   = "${element(module.subnet.appsubnets, count.index)}"
	vpc_security_group_ids      = ["${module.sg.production-gateway-id}","${module.sg.production-reporting-gateway-id}"]
	associate_public_ip_address = "${var.poshmark_gateway_associate_public_ip_address}"
	source_dest_check           = "${var.poshmark_gateway_source_dest_check}"

		tags {
			Type                  = "${var.poshmark_gateway_tag-type}"
			Env                   = "${var.poshmark_gateway_env}"
			Cluster               = "${var.poshmark_gateway_tag-cluster}"
			Vpc                   = "${var.poshmark_gateway_tag-vpc}"
			Name                  = "${var.poshmark_gateway_tag-name}-${count.index}${element(var.az, count.index)}"
		}

		root_block_device {
			volume_type           = "${var.poshmark_gateway_root-volume_type}"
			volume_size           = "${var.poshmark_gateway_root-volume_size}"
			delete_on_termination = "${var.poshmark_gateway_root-volume-delete_on_termination}"
		}
}


#########################################################
#  				Outputs
#########################################################

output "spark-access-ids" {
  value = "${join(",", aws_instance.spark-access.*.id)}"
}

output "poshmark-access-ids" {
  value = "${join(",", aws_instance.poshmark-access.*.id)}"
}

output "poshmark-gateway-ids" {
  value = "${join(",", aws_instance.poshmark-gateway.*.id)}"
}
