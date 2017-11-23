/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : VPC variable files


 ########################################################
*/

variable "region"				   {}
variable "env"					   {}
variable "appname"			   {}
variable "bu"					     {}

variable "deluge"  { type="map"
  default = {
   name             =""
   shard_count      =""
   retention_period =""
  }
}

variable "implicit_post_share_collection_stream"  { type="map"
  default = {
   name             =""
   shard_count      =""
   retention_period =""
  }
}

variable "implicit_share_stream"  { type="map"
  default = {
   name             =""
   shard_count      =""
   retention_period =""
  }
}
