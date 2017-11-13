variable "region"				               {}
variable "env"					               {}
variable "appname"			               {}
variable "bu"					                 {}
variable "cluster_name"               { type="list"}
variable "az"                         { type="list"}
variable "instance_type"              { type="list"}
variable "key_name"                   {}
#####################################################################

variable "mongoconfigsvr_ami"           {}
variable "mongoconfigsvr_servername"    { type="list"}
variable "mongoconfigsvr_servercount"   {}
variable "mongoconfigsvr_sg_grps"       { type="list"}
variable "mongoconfigsvr_subnet"        { type="list"}
variable "mongoconfigsvr_ebs"           { type="list"}
variable "mongoconfigsvr_size"          { type="list"}
variable "mongoconfigsvr_type"          { type="list"}
#####################################################################
variable "mongodb_gandalf_ami"                   {}
variable "mongodb_gandalf_primary_servername"    { type="list"}
variable "mongodb_gandalf_primary_servercount"   {}
variable "mongodb_gandalf_primary_sg_grps"       { type="list"}
variable "mongodb_gandalf_primary_subnet"        { type="list"}
variable "mongodb_gandalf_primary_ebs"           { type="list"}
variable "mongodb_gandalf_primary_size"          { type="list"}
variable "mongodb_gandalf_primary_type"          { type="list"}
########################################################################
