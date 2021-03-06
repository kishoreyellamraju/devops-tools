region                             = "us-west-2"
env                                =	"prod"
appname                            =	"poshmark"
iam_instance_profile               =	""
count                              = "8"
ami                                = "test_ami"
ebs_optimized                      = "true"
instance_type                      = "m3.medium"
monitoring                         = "false"
key_name                           = "common_key_name"
associate_public_ip_address        = "true"
source_dest_check                  = "true"
root-volume_type                   = "gp2"
root-volume_size                   = "32"
root-delete_on_termination         = "true"
tag-cluster                        = "FriendFinder"
tag-type                           = "QueueWorker"
tag-name                           = "prod-ff-qw"
tag-env                            = "Prod"
tag-vpc                            = "Yes"
az                                 = ["2b", "2c"]
