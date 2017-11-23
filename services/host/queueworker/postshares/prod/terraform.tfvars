region                             = "us-west-2"
count                              = "24"
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
tag-name                           = "prod-ps-qw"
tag-vpc                            = "Yes"
tag-type                           = "QueueWorker"
tag-env                            = "Prod"
tag-cluster                        = "PostShares"
iam_instance_profile               = "arn:aws:iam::666737672436:instance-profile/implicit-share-worker"
az                                 = ["2b", "2c"]

