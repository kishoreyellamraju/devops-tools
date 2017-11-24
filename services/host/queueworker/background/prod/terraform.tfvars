region                             = "us-west-2"
env                                =	"prod"
count                              = "18"
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
tag-type                           = "QueueWorker"
tag-elastic                        = "Morning"
tag-name                           = "prod-bg-qw"
tag-vpc                            = "Yes"
tag-cluster                        = "Background"
tag-env                            = "Prod"
az                                 = ["2b", "2c"]