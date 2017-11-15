/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : VPC variable files


 ########################################################
*/

variable "region"				       {}
variable "env"					       {}
variable "vpc_cidr"			       { type = "list" }
variable "vpc_name"			       { type = "list" }
variable "appname"			       {}
variable "bu"					         {}
variable "vpc_routetable_name" { type = "list" }
