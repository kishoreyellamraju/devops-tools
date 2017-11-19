/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "placement-group" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/placement-group/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################
output "circe-c-id" {
  value = "${data.terraform_remote_state.placement-group.circe-c-id}"
}

output "mocha-b-id" {
  value = "${data.terraform_remote_state.placement-group.mocha-b-id}"
}

output "mazagran-b-id" {
  value = "${data.terraform_remote_state.placement-group.mazagran-b-id}"
}

output "americano-b-id" {
  value = "${data.terraform_remote_state.placement-group.americano-b-id}"
}

output "latte-c-id" {
  value = "${data.terraform_remote_state.placement-group.latte-c-id}"
}

output "gandalf-c-id" {
  value = "${data.terraform_remote_state.placement-group.gandalf-c-id}"
}

output "breve-b-id" {
  value = "${data.terraform_remote_state.placement-group.breve-b-id}"
}

output "testing-db-id" {
  value = "${data.terraform_remote_state.placement-group.testing-db-id}"
}

output "ironbank-c-id" {
  value = "${data.terraform_remote_state.placement-group.ironbank-c-id}"
}

output "vault-c-id" {
  value = "${data.terraform_remote_state.placement-group.vault-c-id}"
}

output "circe-id" {
  value = "${data.terraform_remote_state.placement-group.circe-id}"
}

output "kaapi-c-id" {
  value = "${data.terraform_remote_state.placement-group.kaapi-c-id}"
}

output "redis-cache-id" {
  value = "${data.terraform_remote_state.placement-group.redis-cache-id}"
}

output "americano-c-id" {
  value = "${data.terraform_remote_state.placement-group.americano-c-id}"
}

output "vault-id" {
  value = "${data.terraform_remote_state.placement-group.vault-id}"
}

output "skynet-b-id" {
  value = "${data.terraform_remote_state.placement-group.skynet-b-id}"
}

output "prod-activity-db-id" {
  value = "${data.terraform_remote_state.placement-group.prod-activity-db-id}"
}

output "ironbank-b-id" {
  value = "${data.terraform_remote_state.placement-group.ironbank-b-id}"
}

output "morgana-b-id" {
  value = "${data.terraform_remote_state.placement-group.morgana-b-id}"
}

output "romano-c-id" {
  value = "${data.terraform_remote_state.placement-group.romano-c-id}"
}

output "stormlight-id" {
  value = "${data.terraform_remote_state.placement-group.stormlight-id}"
}

output "yaga-id" {
  value = "${data.terraform_remote_state.placement-group.yaga-id}"
}

output "doppio-c-id" {
  value = "${data.terraform_remote_state.placement-group.doppio-c-id}"
}

output "merlin-id" {
  value = "${data.terraform_remote_state.placement-group.merlin-id}"
}

output "doppio-b-id" {
  value = "${data.terraform_remote_state.placement-group.doppio-b-id}"
}

output "stibbons-c-id" {
  value = "${data.terraform_remote_state.placement-group.stibbons-c-id}"
}

output "stibbons-id" {
  value = "${data.terraform_remote_state.placement-group.stibbons-id}"
}

output "breve-c-id" {
  value = "${data.terraform_remote_state.placement-group.breve-c-id}"
}

output "medea-c-id" {
  value = "${data.terraform_remote_state.placement-group.medea-c-id}"
}

output "mazagran-c-id" {
  value = "${data.terraform_remote_state.placement-group.mazagran-c-id}"
}

output "prod-user-db-c-id" {
  value = "${data.terraform_remote_state.placement-group.prod-user-db-c-id}"
}

output "kaapi-b-id" {
  value = "${data.terraform_remote_state.placement-group.kaapi-b-id}"
}

output "merlin-c-id" {
  value = "${data.terraform_remote_state.placement-group.merlin-c-id}"
}

output "prod-user-db-id" {
  value = "${data.terraform_remote_state.placement-group.prod-user-db-id}"
}

output "latte-b-id" {
  value = "${data.terraform_remote_state.placement-group.latte-b-id}"
}

output "morgana-c-id" {
  value = "${data.terraform_remote_state.placement-group.morgana-c-id}"
}

output "romano-b-id" {
  value = "${data.terraform_remote_state.placement-group.romano-b-id}"
}

output "espresso-b-id" {
  value = "${data.terraform_remote_state.placement-group.espresso-b-id}"
}

output "espresso-c-id" {
  value = "${data.terraform_remote_state.placement-group.espresso-c-id}"
}

output "cerberus-id" {
  value = "${data.terraform_remote_state.placement-group.cerberus-id}"
}

output "mocha-c-id" {
  value = "${data.terraform_remote_state.placement-group.mocha-c-id}"
}

output "medea-id" {
  value = "${data.terraform_remote_state.placement-group.medea-id}"
}

output "gandalf-id" {
  value = "${data.terraform_remote_state.placement-group.gandalf-id}"
}

output "redis-userdata-id" {
  value = "${data.terraform_remote_state.placement-group.redis-userdata-id}"
}

output "redis-data-id" {
  value = "${data.terraform_remote_state.placement-group.redis-data-id}"
}

output "test-c-id" {
  value = "${data.terraform_remote_state.placement-group.test-c-id}"
}

output "sauron-id" {
  value = "${data.terraform_remote_state.placement-group.sauron-id}"
}
