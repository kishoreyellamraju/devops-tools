/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : VPC variable files


 ########################################################
*/

variable "region"				               {}
variable "env"					               {}
variable "appname"			               {}
variable "bu"					                 {}
variable "cluster_name"               { type="list"}
variable "az"                         { type="list"}
variable "instance_type"              { type="list"}
variable "key_name"                   {}
#####################################################################
variable "americano_ami"                {}
variable "americano_data_servername"    { type="list"}
variable "americano_data_servercount"   {}
variable "americano_master_servercount" {}
variable "americano_master_servername"  { type="list"}
variable "americano_sg_grps"            { type="list"}
variable "americano_data_subnet"        { type="list"}
variable "americano_master_subnet"      { type="list"}
variable "americano_data_ebs"           { type="list"}
variable "americano_data_size"          { type="list"}
variable "americano_data_type"          { type="list"}

#############################################################################

variable "kaapi_ami"                {}
variable "kaapi_data_servername"    { type="list"}
variable "kaapi_data_servercount"   {}
variable "kaapi_master_servercount" {}
variable "kaapi_master_servername"  { type="list"}
variable "kaapi_sg_grps"            { type="list"}
variable "kaapi_data_subnet"        { type="list"}
variable "kaapi_master_subnet"      { type="list"}
variable "kaapi_data_ebs"           { type="list"}
variable "kaapi_data_size"          { type="list"}
variable "kaapi_data_type"          { type="list"}
variable "kaapi_client_servercount" {}
variable "kaapi_client_servername"  { type="list"}
variable "kaapi_client_subnet"      { type="list"}
################################################################################
variable "romano_ami"                {}
variable "romano_data_servername"    { type="list"}
variable "romano_data_servercount"   {}
variable "romano_master_servercount" {}
variable "romano_master_servername"  { type="list"}
variable "romano_sg_grps"            { type="list"}
variable "romano_data_subnet"        { type="list"}
variable "romano_master_subnet"      { type="list"}
variable "romano_data_ebs"           { type="list"}
variable "romano_data_size"          { type="list"}
variable "romano_data_type"          { type="list"}
variable "romano_client_servercount" {}
variable "romano_client_servername"  { type="list"}
variable "romano_client_subnet"      { type="list"}
#####################################################################################
variable "espresso_ami"                {}
variable "espresso_data_servername"    { type="list"}
variable "espresso_data_servercount"   {}
variable "espresso_master_servercount" {}
variable "espresso_master_servername"  { type="list"}
variable "espresso_sg_grps"            { type="list"}
variable "espresso_data_subnet"        { type="list"}
variable "espresso_master_subnet"      { type="list"}
variable "espresso_data_ebs"           { type="list"}
variable "espresso_data_size"          { type="list"}
variable "espresso_data_type"          { type="list"}
#####################################################################################
variable "breve_ami"                {}
variable "breve_data_servername"    { type="list"}
variable "breve_data_servercount"   {}
variable "breve_master_servercount" {}
variable "breve_master_servername"  { type="list"}
variable "breve_sg_grps"            { type="list"}
variable "breve_data_subnet"        { type="list"}
variable "breve_master_subnet"      { type="list"}
variable "breve_data_ebs"           { type="list"}
variable "breve_data_size"          { type="list"}
variable "breve_data_type"          { type="list"}
#####################################################################################
variable "latte_ami"                {}
variable "latte_data_servername"    { type="list"}
variable "latte_data_servercount"   {}
variable "latte_master_servercount" {}
variable "latte_master_servername"  { type="list"}
variable "latte_sg_grps"            { type="list"}
variable "latte_data_subnet"        { type="list"}
variable "latte_master_subnet"      { type="list"}
variable "latte_data_ebs"           { type="list"}
variable "latte_data_size"          { type="list"}
variable "latte_data_type"          { type="list"}
variable "latte_client_servercount" {}
variable "latte_client_servername"  { type="list"}
variable "latte_client_subnet"      { type="list"}
#####################################################################################
variable "mazagran_ami"                {}
variable "mazagran_data_servername"    { type="list"}
variable "mazagran_data_servercount"   {}
variable "mazagran_master_servercount" {}
variable "mazagran_master_servername"  { type="list"}
variable "mazagran_sg_grps"            { type="list"}
variable "mazagran_data_subnet"        { type="list"}
variable "mazagran_master_subnet"      { type="list"}
variable "mazagran_data_ebs"           { type="list"}
variable "mazagran_data_size"          { type="list"}
variable "mazagran_data_type"          { type="list"}
variable "mazagran_client_servercount" {}
variable "mazagran_client_servername"  { type="list"}
variable "mazagran_client_subnet"      { type="list"}
########################################################################################
variable "mocha_ami"                {}
variable "mocha_data_servername"    { type="list"}
variable "mocha_data_servercount"   {}
variable "mocha_master_servercount" {}
variable "mocha_master_servername"  { type="list"}
variable "mocha_sg_grps"            { type="list"}
variable "mocha_data_subnet"        { type="list"}
variable "mocha_master_subnet"      { type="list"}
variable "mocha_data_ebs"           { type="list"}
variable "mocha_data_size"          { type="list"}
variable "mocha_data_type"          { type="list"}
variable "mocha_client_servercount" {}
variable "mocha_client_servername"  { type="list"}
variable "mocha_client_subnet"      { type="list"}
########################################################################################
variable "doppio_ami"                {}
variable "doppio_data_servername"    { type="list"}
variable "doppio_data_servercount"   {}
variable "doppio_master_servercount" {}
variable "doppio_master_servername"  { type="list"}
variable "doppio_sg_grps"            { type="list"}
variable "doppio_data_subnet"        { type="list"}
variable "doppio_master_subnet"      { type="list"}
variable "doppio_data_ebs"           { type="list"}
variable "doppio_data_size"          { type="list"}
variable "doppio_data_type"          { type="list"}
variable "doppio_client_servercount" {}
variable "doppio_client_servername"  { type="list"}
variable "doppio_client_subnet"      { type="list"}
########################################################################################
variable "ironbank_ami"                {}
variable "ironbank_data_servername"    { type="list"}
variable "ironbank_data_servercount"   {}
variable "ironbank_master_servercount" {}
variable "ironbank_master_servername"  { type="list"}
variable "ironbank_sg_grps"            { type="list"}
variable "ironbank_data_subnet"        { type="list"}
variable "ironbank_master_subnet"      { type="list"}
variable "ironbank_data_ebs"           { type="list"}
variable "ironbank_data_size"          { type="list"}
variable "ironbank_data_type"          { type="list"}
variable "ironbank_client_servercount" {}
variable "ironbank_client_servername"  { type="list"}
variable "ironbank_client_subnet"      { type="list"}
