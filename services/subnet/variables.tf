/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : VPC variable files


 ########################################################
*/

variable "region"				{}
variable "env"					{}
variable "subnet_cidr"	{ type = "list" }
variable "subnet_name"	{ type = "list" }
variable "appname"			{}
variable "bu"					  {}
variable "az"           { type = "list" }
variable "cluster"      { type = "list" }
variable "type"         { type = "list" }
