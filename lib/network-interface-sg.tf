/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "ni-sg" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/network-interface-sg/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "n-asg0-id" {
  value = "${data.terraform_remote_state.ni-sg.asg0-id}"
}

output "n-asg1-id" {
  value = "${data.terraform_remote_state.ni-sg.asg1-id}"
}

output "n-asg2-id" {
  value = "${data.terraform_remote_state.ni-sg.asg2-id}"
}
