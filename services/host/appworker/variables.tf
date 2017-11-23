variable "region"				               {}
variable "env"					               {}
variable "appname"			               {}
variable "bu"					                 {}
variable "az"                          {}


variable "sidekiq_key_name"                    {}
variable "sidekiq_ami"                         {}
variable "sidekiq_count"                       {}
variable "sidekiq_ebs_optimized"               {}
variable "sidekiq_monitoring"                  {}
variable "sidekiq_source_dest_check"           {}
variable "sidekiq_associate_public_ip_address" {}
variable "sidekiq_iam_instance_profile"        {}
variable "sidekiq_root-volume_type"            {}
variable "sidekiq_root-volume_size"            {}
variable "sidekiq_root-volume-delete_on_termination" {}
variable "sidekiq_tag-type"                    {}
variable "sidekiq_tag-cluster"                 {}
variable "sidekiq_tag-vpc"                     {}
variable "sidekiq_tag-name"                    {}
variable "sidekiq_instance_type"               {}
