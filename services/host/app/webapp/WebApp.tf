instance_type						= "c4.2xlarge"
key_name							= "common_key_name"
ebs_optimized						= true
monitoring							= false
source_dest_check					= true
associate_public_ip_address			= true
iam_instance_profile				= "arn:aws:iam::666737672436:instance-profile/app"
ami									= "common-ami-for-all-apps" 
security_group						= "${module.network.aws_security_group.production-app.id}"
count								= 1

root-volume_type					= "gp2"
root-volume_size					= "32"
root-volume-delete_on_termination	= "true"

tag-type							= "App"
tag-env								= "Prod"
tag-cluster							= "WebApp"
tag-vpc								= "true"
tag-name							= "prod-web-app"

variable "subnets" {
  type = "list"
  default = ["subnet-6469e801", "subnet-3fd71166"]
}

resource "aws_instance" "prod-web-app" {
	count 						= "${var.count}"
	ami                         = "${var.ami}"
	ebs_optimized               = "${var.ebs_optimized}"
	instance_type               = "${var.instance_type}"
	monitoring                  = "${var.monitoring}"
	key_name                    = "${var.key_name}"
	subnet_id                   = "${element(var.subnets, count.index)}"
	vpc_security_group_ids      = ["${var.security_group}"]
	iam_instance_profile   		= "${var.iam_instance_profile}"
	associate_public_ip_address = "${var.associate_public_ip_address}"
	source_dest_check           = "${var.source_dest_check}"

		tags {
			Type                  = "${var.tag-type}"
			Env                   = "${var.tag-env}"
			Cluster               = "${var.tag-cluster}"
			Vpc                   = "${var.tag-vpc}"
			Name                  = "${var.tag-name}-${count.index}"
		}

		root_block_device {
			volume_type           = "${var.root-volume_type}"
			volume_size           = "${var.root-volume_size}"
			delete_on_termination = "${var.root-volume-delete_on_termination}"
		}
}