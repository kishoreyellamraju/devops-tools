region                      =	"us-west-2"
env                         =	"prod"
appname                     =	"poshmark"
bu                          =	"it"
ami                         = "test_ami"
key_name							      = "common_key_name"
az                          = ["2b", "2c"]
###########################################################
count                       ="2"
instance_type						    = "m4.large"
ebs_optimized		            = "true"
monitoring							    = "false"
source_dest_check					  = "true"
associate_public_ip_address	= "true"
root-volume_type					  = "gp2"
root-volume_size					  = "32"
root-volume-delete_on_termination	= "true"
tag-type							= "App"
tag-cluster						= "Vault"
tag-vpc								= "true"
tag-name							= "prod-vault-app"
subnets               = ["apppublicsubnetb-id","apppublicsubnetc-id"]
security_group        ="production-app-id"
iam_instance_profile  = "app"
