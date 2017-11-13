/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "vpc_network_acl" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/vpc_network_acl/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "poshmark-acl1-id" {
  value = "${data.terraform_remote_state.vpc_network_acl.poshmark-acl1-id}"
}

output "poshmark-acl2-id" {
  value = "${data.terraform_remote_state.vpc_network_acl.poshmark-acl2-id}"
}
