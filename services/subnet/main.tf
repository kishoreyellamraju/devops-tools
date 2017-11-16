/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to create VPC
 ########################################################
*/

provider "aws" {
  region     = "${var.region}"
}

 terraform {
	  backend "s3" {}
}

module "network" {
  source = "../../lib"
  env = "${var.env}"
  app = "${var.appname}"
}

resource "aws_subnet" "sparkemrpublic1b" {
  vpc_id                  = "${module.network.sparkemr-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"sparkemrpublic1b")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"

    tags {
        Name 			    = "${lookup(var.subnet_name,"sparkemrpublic1b")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}
resource "aws_route_table_association" "arta0" {
  subnet_id      = "${aws_subnet.sparkemrpublic1b.id}"
  route_table_id = "${module.network.sparkpublic-rt-id}"
}
#########################################################################
resource "aws_subnet" "sparkemrpublic1c" {
  vpc_id                  = "${module.network.sparkemr-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"sparkemrpublic1c")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"sparkemrpublic1c")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}

resource "aws_route_table_association" "arta18" {
  subnet_id      = "${aws_subnet.sparkemrpublic1c.id}"
  route_table_id = "${module.network.sparkprivate-rt-id}"
}

###############################################################################
resource "aws_subnet" "publicsubnetb" {
  vpc_id     = "${module.network.poshmark-id}"
  cidr_block = "${lookup(var.subnet_cidr,"publicsubnetb")}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"publicsubnetb")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[2]}"
    }
}

resource "aws_route_table_association" "arta1" {
  subnet_id      = "${aws_subnet.publicsubnetb.id}"
  route_table_id = "${module.network.public2b-rt-id}"
}
###############################################################################
resource "aws_subnet" "publicsubnetc" {
  vpc_id     = "${module.network.poshmark-id}"
  cidr_block = "${lookup(var.subnet_cidr,"publicsubnetc")}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"publicsubnetc")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[2]}"

  }
}

resource "aws_route_table_association" "arta2" {
  subnet_id      = "${aws_subnet.publicsubnetc.id}"
  route_table_id = "${module.network.public2c-rt-id}"
}
###############################################################################
resource "aws_subnet" "searchprivatesubnet1b" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"searchprivatesubnet1b")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"

    tags {
        Name 			    = "${lookup(var.subnet_name,"searchprivatesubnet1b")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[1]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta3" {
  subnet_id      = "${aws_subnet.searchprivatesubnet1b.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}
###############################################################################
resource "aws_subnet" "searchprivatesubnet1c" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"searchprivatesubnet1c")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"

    tags {
        Name 			    = "${lookup(var.subnet_name,"searchprivatesubnet1c")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[1]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta4" {
  subnet_id      = "${aws_subnet.searchprivatesubnet1c.id}"
  route_table_id = "${module.network.private2c-rt-id}"
}
################################################################################
resource "aws_subnet" "apppublicsubnetb" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"apppublicsubnetb")}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"apppublicsubnetb")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}

resource "aws_route_table_association" "arta5" {
  subnet_id      = "${aws_subnet.apppublicsubnetb.id}"
  route_table_id = "${module.network.public2b-rt-id}"
}
################################################################################
resource "aws_subnet" "apppublicsubnetc" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"apppublicsubnetc")}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"apppublicsubnetc")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"

    }
}

resource "aws_route_table_association" "arta6" {
  subnet_id      = "${aws_subnet.apppublicsubnetc.id}"
  route_table_id = "${module.network.public2c-rt-id}"
}
################################################################################
resource "aws_subnet" "databaseprivatesubnetb" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"databaseprivatesubnetb")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"databaseprivatesubnetb")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[2]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta7" {
  subnet_id      = "${aws_subnet.databaseprivatesubnetb.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}

################################################################################
resource "aws_subnet" "databaseprivatesubnetc" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"databaseprivatesubnetc")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"databaseprivatesubnetc")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[2]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta8" {
  subnet_id      = "${aws_subnet.databaseprivatesubnetc.id}"
  route_table_id = "${module.network.private2c-rt-id}"
}
###############################################################################
resource "aws_subnet" "redisprivatesubnetb" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"redisprivatesubnetb")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"redisprivatesubnetb")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[3]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta9" {
  subnet_id      = "${aws_subnet.redisprivatesubnetb.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}
###############################################################################
resource "aws_subnet" "redisprivatesubnetc" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"redisprivatesubnetc")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"redisprivatesubnetc")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[3]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta10" {
  subnet_id      = "${aws_subnet.redisprivatesubnetc.id}"
  route_table_id = "${module.network.private2c-rt-id}"
}
################################################################################
resource "aws_subnet" "searchprivatesubnet2b" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"searchprivatesubnet2b")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"searchprivatesubnet2b")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[1]}"
        Type          = "${var.type[1]}"
  }
}

resource "aws_route_table_association" "arta11" {
  subnet_id      = "${aws_subnet.searchprivatesubnet2b.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}
################################################################################
resource "aws_subnet" "searchprivatesubnet2c" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"searchprivatesubnet2c")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"searchprivatesubnet2c")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[1]}"
        Type          = "${var.type[1]}"

    }
}
resource "aws_route_table_association" "arta12" {
  subnet_id      = "${aws_subnet.searchprivatesubnet2c.id}"
  route_table_id = "${module.network.private2c-rt-id}"
}
################################################################################
resource "aws_subnet" "poshfit" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"poshfit")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"poshfit")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}

resource "aws_route_table_association" "arta13" {
  subnet_id      = "${aws_subnet.poshfit.id}"
  route_table_id = "${module.network.poshfit-rt-id}"
}
###############################################################################
resource "aws_subnet" "other" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"other")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"other")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}

resource "aws_route_table_association" "arta14" {
  subnet_id      = "${aws_subnet.other.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}
################################################################################
resource "aws_subnet" "vpnmonitoringprivatesubnetb" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"vpnmonitoringprivatesubnetb")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"vpnmonitoringprivatesubnetb")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}

resource "aws_route_table_association" "arta15" {
  subnet_id      = "${aws_subnet.vpnmonitoringprivatesubnetb.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}
###############################################################################
resource "aws_subnet" "vpnmonitoringprivatesubnetc" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"vpnmonitoringprivatesubnetc")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[3]}"
    tags {
        Name 			    = "${lookup(var.subnet_name,"vpnmonitoringprivatesubnetc")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[3]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"
  }
}

resource "aws_route_table_association" "arta16" {
  subnet_id      = "${aws_subnet.vpnmonitoringprivatesubnetc.id}"
  route_table_id = "${module.network.private2c-rt-id}"
}

resource "aws_subnet" "skynetprivatesubnetb" {
  vpc_id                  = "${module.network.poshmark-id}"
  cidr_block              = "${lookup(var.subnet_cidr,"skynetprivatesubnetb")}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.az[2]}"

    tags {
        Name 			    = "${lookup(var.subnet_name,"skynetprivatesubnetb")}"
        Environment		= "${var.env}"
        Application		= "${var.appname}"
        Bu				    = "${var.bu}"
        AZ            = "${var.az[2]}"
        Cluster       = "${var.cluster[0]}"
        Type          = "${var.type[0]}"

  }
}

resource "aws_route_table_association" "arta17" {
  subnet_id      = "${aws_subnet.skynetprivatesubnetb.id}"
  route_table_id = "${module.network.private2b-rt-id}"
}

################################################################################

#########################################################
#  				Outputs
#########################################################

output "sparkemrpublic1b-id" {
  value = "${aws_subnet.sparkemrpublic1b.id}"
}

output "publicsubnetb-id" {
  value = "${aws_subnet.publicsubnetb.id}"
}

output "publicsubnetc-id" {
  value = "${aws_subnet.publicsubnetc.id}"
}

output "searchprivatesubnet1b-id" {
  value = "${aws_subnet.searchprivatesubnet1b.id}"
}
output "searchprivatesubnet1c-id" {
  value = "${aws_subnet.searchprivatesubnet1c.id}"
}

output "apppublicsubnetb-id" {
  value = "${aws_subnet.apppublicsubnetb.id}"
}
output "apppublicsubnetc-id" {
  value = "${aws_subnet.apppublicsubnetc.id}"
}
output "databaseprivatesubnetb-id" {
  value = "${aws_subnet.databaseprivatesubnetb.id}"
}
output "databaseprivatesubnetc-id" {
  value = "${aws_subnet.databaseprivatesubnetc.id}"
}
output "redisprivatesubnetb-id" {
  value = "${aws_subnet.redisprivatesubnetb.id}"
}
output "redisprivatesubnetc-id" {
  value = "${aws_subnet.redisprivatesubnetc.id}"
}
output "searchprivatesubnet2b-id" {
  value = "${aws_subnet.searchprivatesubnet2b.id}"
}
output "searchprivatesubnet2c-id" {
  value = "${aws_subnet.searchprivatesubnet2c.id}"
}
output "poshfit-id" {
  value = "${aws_subnet.poshfit.id}"
}
output "other-id" {
  value = "${aws_subnet.other.id}"
}
output "vpnmonitoringprivatesubnetb-id" {
  value = "${aws_subnet.vpnmonitoringprivatesubnetb.id}"
}
output "vpnmonitoringprivatesubnetc-id" {
  value = "${aws_subnet.vpnmonitoringprivatesubnetc.id}"
}
output "skynetprivatesubnetb-id" {
  value = "${aws_subnet.skynetprivatesubnetb.id}"
}
output "sparkemrpublic1c-id" {
  value = "${aws_subnet.sparkemrpublic1c.id}"
}
