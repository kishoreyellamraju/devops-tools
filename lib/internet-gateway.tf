/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws
 ########################################################
*/
data "terraform_remote_state" "igw" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/igw/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "sparkemr-igw-id" {
  value = "${data.terraform_remote_state.igw.sparkemr-igw-id}"
}

output "poshmark-igw-id" {
  value = "${data.terraform_remote_state.igw.poshmark-igw-id}"
}
