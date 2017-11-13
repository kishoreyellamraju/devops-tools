/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "rt" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/route_table/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################
output "private2c-rt-id" {
  value = "${data.terraform_remote_state.rt.private2c-rt-id}"
}

output "poshfit-rt-id" {
  value = "${data.terraform_remote_state.rt.poshfit-rt-id}"
}

output "public2c-rt-id" {
  value = "${data.terraform_remote_state.rt.public2c-rt-id}"
}

output "private2b-rt-id" {
  value = "${data.terraform_remote_state.rt.private2b-rt-id}"
}

output "sparkpublic-rt-id" {
  value = "${data.terraform_remote_state.rt.sparkpublic-rt-id}"
}

output "public2b-rt-id" {
  value = "${data.terraform_remote_state.rt.public2b-rt-id}"
}
output "sparkprivate-rt-id" {
  value = "${data.terraform_remote_state.rt.sparkprivate-rt-id}"
}
