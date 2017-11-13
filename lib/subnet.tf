/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "subnet" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/subnet/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################

output "sparkemrpublic1b-id" {
  value = "${data.terraform_remote_state.subnet.sparkemrpublic1b-id}"
}

output "publicsubnetb-id" {
  value = "${data.terraform_remote_state.subnet.publicsubnetb-id}"
}

output "publicsubnetc-id" {
  value = "${data.terraform_remote_state.subnet.publicsubnetc-id}"
}

output "searchprivatesubnet1b-id" {
  value = "${data.terraform_remote_state.subnet.searchprivatesubnet1b-id}"
}

output "searchprivatesubnet1c-id" {
  value = "${data.terraform_remote_state.subnet.searchprivatesubnet1c-id}"
}

output "apppublicsubnetb-id" {
  value = "${data.terraform_remote_state.subnet.apppublicsubnetb-id}"
}

output "apppublicsubnetc-id" {
  value = "${data.terraform_remote_state.subnet.apppublicsubnetc-id}"
}

output "databaseprivatesubnetb-id" {
  value = "${data.terraform_remote_state.subnet.databaseprivatesubnetb-id}"
}

output "databaseprivatesubnetc-id" {
  value = "${data.terraform_remote_state.subnet.databaseprivatesubnetc-id}"
}

output "redisprivatesubnetb-id" {
  value = "${data.terraform_remote_state.subnet.redisprivatesubnetb-id-id}"
}

output "redisprivatesubnetc-id" {
  value = "${data.terraform_remote_state.subnet.redisprivatesubnetc-id}"
}

output "searchprivatesubnet2b-id" {
  value = "${data.terraform_remote_state.subnet.searchprivatesubnet2b-id}"
}

output "searchprivatesubnet2c-id" {
  value = "${data.terraform_remote_state.subnet.searchprivatesubnet2c-id}"
}

output "poshfit-id" {
  value = "${data.terraform_remote_state.subnet.poshfit-id}"
}

output "other-id" {
  value = "${data.terraform_remote_state.subnet.other-id}"
}

output "vpnmonitoringprivatesubnetb-id" {
  value = "${data.terraform_remote_state.subnet.vpnmonitoringprivatesubnetb-id}"
}

output "vpnmonitoringprivatesubnetc-id" {
  value = "${data.terraform_remote_state.subnet.vpnmonitoringprivatesubnetc-id}"
}

output "skynetprivatesubnetb-id" {
  value = "${data.terraform_remote_state.subnet.skynetprivatesubnetb-id}"
}

output "sparkemrpublic1c-id" {
  value = "${data.terraform_remote_state.subnet.sparkemrpublic1c-id}"
}
