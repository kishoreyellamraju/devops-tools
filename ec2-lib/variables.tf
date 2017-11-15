variable "env"		 {}
variable "app"		 {}
variable "bucket"  { default="mactores-terraform-state" }
variable "tf-state" {
  type = "map"

	default {

	  "dev" 	  	= "dev"
	  "uat" 			= "qa"
	  "prod"			= "prod"

	}

}
