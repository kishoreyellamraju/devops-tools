variable "region"				               {}
variable "env"					               {}
variable "appname"			               {}
variable "bu"					                 {}
variable "key_name"                    {}
variable "ami"                         {}
variable "subnets"                     { type="list"}
variable "count"                       {}
variable "ebs_optimized"               {}
variable "monitoring"                  {}
variable "source_dest_check"           {}
variable "associate_public_ip_address" {}
variable "iam_instance_profile"        {}
variable "root-volume_type"            {}
variable "root-volume_size"            {}
variable "root-volume-delete_on_termination" {}
variable "tag-type"                    {}
variable "tag-cluster"                 {}
variable "tag-vpc"                     {}
variable "tag-name"                    {}
variable "security_group"              {}

variable "instance_type"               {}
