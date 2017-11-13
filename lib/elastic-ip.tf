/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "elastic-ip" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/elastic-ip/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "aeip0-id" {
  value = "${data.terraform_remote_state.elastic-ip.aeip0-id}"
}

output "aeip1-id" {
  value = "${data.terraform_remote_state.elastic-ip.aeip1-id}"
}

output "aeip0-public_ip" {
  value = "${data.terraform_remote_state.elastic-ip.aeip0-public_ip}"
}

output "aeip1-public_ip" {
  value = "${data.terraform_remote_state.elastic-ip.aeip1-public_ip}"
}

output "aeip0-private_ip" {
  value = "${data.terraform_remote_state.elastic-ip.aeip0-private_ip}"
}

output "aeip1-private_ip" {
  value = "${data.terraform_remote_state.elastic-ip.aeip1-private_ip}"
}
