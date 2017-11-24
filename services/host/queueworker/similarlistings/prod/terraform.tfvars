region                             = "us-west-2"
env                                =	"prod"
count                              = "6"
ami                                = "test_ami"
ebs_optimized                      = "true"
instance_type                      = "c4.large"
monitoring                         = "false"
key_name                           = "common_key_name"
associate_public_ip_address        = "true"
source_dest_check                  = "true"
root-volume_type                   = "gp2"
root-volume_size                   = "32"
root-delete_on_termination         = "true"
tag-name                           = "prod-sl-qw"
tag-env                            = "Prod"
tag-type                           = "QueueWorker"
tag-cluster                        = "SimilarListings"
tag-vpc                            = "Yes"
az                                 = ["2b", "2c"]