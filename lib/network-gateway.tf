/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws
 ########################################################
*/
data "terraform_remote_state" "network-gateway" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/nat_gateway/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "ngw0-id" {
  value = "${data.terraform_remote_state.network-gateway.ngw0-id}"
}

output "ngw1-id" {
  value = "${data.terraform_remote_state.network-gateway.ngw1-id}"
}
