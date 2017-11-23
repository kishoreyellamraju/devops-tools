region                             = "us-west-2"
count                              = "19"
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
tag-env                            = "Prod"
tag-elastic                        = "Afternoon"
tag-type                           = "QueueWorker"
tag-name                           = "prod-co-qw"
tag-vpc                            = "Yes"
tag-cluster                        = "Commerce"
az                                 = ["2b", "2c"]

