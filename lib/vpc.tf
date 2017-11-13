/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/vpc/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "sparkemr-id" {
  value = "${data.terraform_remote_state.vpc.sparkemr-id}"
}

output "poshmark-id" {
  value = "${data.terraform_remote_state.vpc.poshmark-id}"
}
