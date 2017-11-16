/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : VPC variable files


 ########################################################
*/

variable "region"				{}
variable "env"					{}
variable "subnet_cidr"	{ type = "map"
  default = {
   sparkemrpublic1b             =""
   publicsubnetb                =""
   publicsubnetc                =""
   searchprivatesubnet1b        =""
   searchprivatesubnet1c        =""
   apppublicsubnetb             =""
   apppublicsubnetc             =""
   databaseprivatesubnetb       =""
   databaseprivatesubnetc       =""
   redisprivatesubnetb          =""
   redisprivatesubnetc          =""
   searchprivatesubnet2b        =""
   searchprivatesubnet2b        =""
   searchprivatesubnet2c        =""
   poshfit                      =""
   other                        =""
   vpnmonitoringprivatesubnetb  =""
   vpnmonitoringprivatesubnetc  =""
   skynetprivatesubnetb         =""
   sparkemrpublic1c             =""
  }

  variable "subnet_name"	{ type = "map"
    default = {
     sparkemrpublic1b             =""
     publicsubnetb                =""
     publicsubnetc                =""
     searchprivatesubnet1b        =""
     searchprivatesubnet1c        =""
     apppublicsubnetb             =""
     apppublicsubnetc             =""
     databaseprivatesubnetb       =""
     databaseprivatesubnetc       =""
     redisprivatesubnetb          =""
     redisprivatesubnetc          =""
     searchprivatesubnet2b        =""
     searchprivatesubnet2b        =""
     searchprivatesubnet2c        =""
     poshfit                      =""
     other                        =""
     vpnmonitoringprivatesubnetb  =""
     vpnmonitoringprivatesubnetc  =""
     skynetprivatesubnetb         =""
     sparkemrpublic1c             =""
    }

 }
variable "subnet_name"	{ type = "map" }
variable "appname"			{}
variable "bu"					  {}
variable "az"           { type = "list" }
variable "cluster"      { type = "list" }
variable "type"         { type = "list" }
