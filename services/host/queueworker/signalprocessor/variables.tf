variable "region"                            {}
variable "count"                             {}
variable "ami"                               {}
variable "ebs_optimized"                     {}
variable "instance_type"                     {}
variable "monitoring"                        {}
variable "key_name"                          {}
variable "associate_public_ip_address"       {}
variable "source_dest_check"                 {}
variable "root-volume_type"                  {}
variable "root-volume_size"                  {}
variable "root-delete_on_termination"        {}
variable "tag-name"                          {}
variable "tag-type"                          {}
variable "tag-cluster"                       {}
variable "tag-vpc"                           {}
variable "tag-env"                           {}
variable "az"                                { type="list" }

