/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "upapp" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/host/app/upapp/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################
output "prod-up-app-ids" {
  value = "${data.terraform_remote_state.upapp.prod-map-app-ids}"
}
