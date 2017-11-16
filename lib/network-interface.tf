/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "network-interface" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/network-interface/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################
/*
output "ani0-id" {
  value = "${data.terraform_remote_state.network-interface.ani0-id}"
}

output "ani1-id" {
  value = "${data.terraform_remote_state.network-interface.ani1-id}"
}
*/
output "ani2-id" {
  value = "${data.terraform_remote_state.network-interface.ani2-id}"
}
