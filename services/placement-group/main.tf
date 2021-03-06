/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to create VPC
 ########################################################
*/

provider "aws" {
  region     = "${var.region}"
}

 terraform {
	  backend "s3" {}
}

module "vpc" {
  source = "../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

resource "aws_placement_group" "circe-c" {
	name="circe-c"
	strategy="cluster"
}
output "circe-c-id" {
	value="${aws_placement_group.circe-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "mocha-b" {
	name="mocha-b"
	strategy="cluster"
}
output "mocha-b-id" {
	value="${aws_placement_group.mocha-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "mazagran-b" {
	name="mazagran-b"
	strategy="cluster"
}
output "mazagran-b-id" {
	value="${aws_placement_group.mazagran-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "americano-b" {
	name="americano-b"
	strategy="cluster"
}
output "americano-b-id" {
	value="${aws_placement_group.americano-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "latte-c" {
	name="latte-c"
	strategy="cluster"
}
output "latte-c-id" {
	value="${aws_placement_group.latte-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "gandalf-c" {
	name="gandalf-c"
	strategy="cluster"
}
output "gandalf-c-id" {
	value="${aws_placement_group.gandalf-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "breve-b" {
	name="breve-b"
	strategy="cluster"
}
output "breve-b-id" {
	value="${aws_placement_group.breve-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "testing-db" {
	name="testing-db"
	strategy="cluster"
}
output "testing-db-id" {
	value="${aws_placement_group.testing-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "ironbank-c" {
	name="ironbank-c"
	strategy="cluster"
}
output "ironbank-c-id" {
	value="${aws_placement_group.ironbank-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "vault-c" {
	name="vault-c"
	strategy="cluster"
}
output "vault-c-id" {
	value="${aws_placement_group.vault-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "circe" {
	name="circe"
	strategy="cluster"
}
output "circe-id" {
	value="${aws_placement_group.circe.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "kaapi-c" {
	name="kaapi-c"
	strategy="cluster"
}
output "kaapi-c-id" {
	value="${aws_placement_group.kaapi-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "redis-cache" {
	name="redis-cache"
	strategy="cluster"
}
output "redis-cache-id" {
	value="${aws_placement_group.redis-cache.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "americano-c" {
	name="americano-c"
	strategy="cluster"
}
output "americano-c-id" {
	value="${aws_placement_group.americano-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "vault" {
	name="vault"
	strategy="cluster"
}
output "vault-id" {
	value="${aws_placement_group.vault.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "skynet-b" {
	name="skynet-b"
	strategy="cluster"
}
output "skynet-b-id" {
	value="${aws_placement_group.skynet-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "prod-activity-db" {
	name="prod-activity-db"
	strategy="cluster"
}
output "prod-activity-db-id" {
	value="${aws_placement_group.prod-activity-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "ironbank-b" {
	name="ironbank-b"
	strategy="cluster"
}
output "ironbank-b-id" {
	value="${aws_placement_group.ironbank-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "morgana-b" {
	name="morgana-b"
	strategy="cluster"
}
output "morgana-b-id" {
	value="${aws_placement_group.morgana-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "romano-c" {
	name="romano-c"
	strategy="cluster"
}
output "romano-c-id" {
	value="${aws_placement_group.romano-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "stormlight" {
	name="stormlight"
	strategy="cluster"
}
output "stormlight-id" {
	value="${aws_placement_group.stormlight.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "yaga" {
	name="yaga"
	strategy="cluster"
}
output "yaga-id" {
	value="${aws_placement_group.yaga.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "doppio-c" {
	name="doppio-c"
	strategy="cluster"
}
output "doppio-c-id" {
	value="${aws_placement_group.doppio-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "merlin" {
	name="merlin"
	strategy="cluster"
}
output "merlin-id" {
	value="${aws_placement_group.merlin.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "doppio-b" {
	name="doppio-b"
	strategy="cluster"
}
output "doppio-b-id" {
	value="${aws_placement_group.doppio-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "stibbons-c" {
	name="stibbons-c"
	strategy="cluster"
}
output "stibbons-c-id" {
	value="${aws_placement_group.stibbons-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "stibbons" {
	name="stibbons"
	strategy="cluster"
}
output "stibbons-id" {
	value="${aws_placement_group.stibbons.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "breve-c" {
	name="breve-c"
	strategy="cluster"
}
output "breve-c-id" {
	value="${aws_placement_group.breve-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "medea-c" {
	name="medea-c"
	strategy="cluster"
}
output "medea-c-id" {
	value="${aws_placement_group.medea-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "mazagran-c" {
	name="mazagran-c"
	strategy="cluster"
}
output "mazagran-c-id" {
	value="${aws_placement_group.mazagran-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "prod-user-db-c" {
	name="prod-user-db-c"
	strategy="cluster"
}
output "prod-user-db-c-id" {
	value="${aws_placement_group.prod-user-db-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "kaapi-b" {
	name="kaapi-b"
	strategy="cluster"
}
output "kaapi-b-id" {
	value="${aws_placement_group.kaapi-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "merlin-c" {
	name="merlin-c"
	strategy="cluster"
}
output "merlin-c-id" {
	value="${aws_placement_group.merlin-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "prod-user-db" {
	name="prod-user-db"
	strategy="cluster"
}
output "prod-user-db-id" {
	value="${aws_placement_group.prod-user-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "latte-b" {
	name="latte-b"
	strategy="cluster"
}
output "latte-b-id" {
	value="${aws_placement_group.latte-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "morgana-c" {
	name="morgana-c"
	strategy="cluster"
}
output "morgana-c-id" {
	value="${aws_placement_group.morgana-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "romano-b" {
	name="romano-b"
	strategy="cluster"
}
output "romano-b-id" {
	value="${aws_placement_group.romano-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "espresso-b" {
	name="espresso-b"
	strategy="cluster"
}
output "espresso-b-id" {
	value="${aws_placement_group.espresso-b.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "espresso-c" {
	name="espresso-c"
	strategy="cluster"
}
output "espresso-c-id" {
	value="${aws_placement_group.espresso-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "cerberus" {
	name="cerberus"
	strategy="cluster"
}
output "cerberus-id" {
	value="${aws_placement_group.cerberus.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "mocha-c" {
	name="mocha-c"
	strategy="cluster"
}
output "mocha-c-id" {
	value="${aws_placement_group.mocha-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "medea" {
	name="medea"
	strategy="cluster"
}
output "medea-id" {
	value="${aws_placement_group.medea.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "gandalf" {
	name="gandalf"
	strategy="cluster"
}
output "gandalf-id" {
	value="${aws_placement_group.gandalf.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "redis-userdata" {
	name="redis-userdata"
	strategy="cluster"
}
output "redis-userdata-id" {
	value="${aws_placement_group.redis-userdata.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "redis-data" {
	name="redis-data"
	strategy="cluster"
}
output "redis-data-id" {
	value="${aws_placement_group.redis-data.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "test-c" {
	name="test-c"
	strategy="cluster"
}
output "test-c-id" {
	value="${aws_placement_group.test-c.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_placement_group" "sauron" {
	name="sauron"
	strategy="cluster"
}
output "sauron-id" {
	value="${aws_placement_group.sauron.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################
