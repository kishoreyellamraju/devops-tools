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
###############################################################################
#                          AMERICANO
##############################################################################
resource "template_file" "americano_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.americano_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[0]}"
 }
}

resource "aws_instance" "americano_master_instance" {
   count                  = "${var.americano_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.americano_master_subnet, count.index)}"
   ami                    =  "${var.americano_ami}"
   instance_type          =  "${var.instance_type[0]}"
   key_name               =  "${var.key_name}"

   vpc_security_group_ids = ["${module.network.americano_sg_grps[0]}"]
   user_data = "${element(template_file.americano_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[0]}"
     Env     = "${var.env}"
     Name    = "${element(var.americano_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "americano_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.americano_master_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[0]}"
	}
}

resource "aws_instance" "americano_data_instance" {
   count                  = "${var.americano_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.americano_data_subnet, count.index)}"
   ami                    =  "${var.americano_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   vpc_security_group_ids = ["${module.network.americano_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.americano_data_size[0]}"
    volume_type           = "${var.americano_data_type[0]}"
    device_name           = "${var.americano_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.americano_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[0]}"
     Env     = "${var.env}"
     Name    = "${element(var.americano_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

###############################################################################
#                        KAAPI
###############################################################################
resource "template_file" "kaapi_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.kaapi_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[1]}"
 }
}

resource "aws_instance" "kaapi_master_instance" {
   count                  = "${var.kaapi_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.kaapi_master_subnet, count.index)}"
   ami                    =  "${var.kaapi_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile   = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.kaapi_sg_grps[0]}"]
   user_data = "${element(template_file.kaapi_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[1]}"
     Env     = "${var.env}"
     Name    = "${element(var.kaapi_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "kaapi_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.kaapi_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[1]}"
	}
}

resource "aws_instance" "kaapi_data_instance" {
   count                  = "${var.americano_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.kaapi_data_subnet, count.index)}"
   ami                    =  "${var.kaapi_ami}"
   instance_type          =  "${var.instance_type[2]}"
   key_name               =  "${var.key_name}"
iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.kaapi_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.kaapi_data_size[0]}"
    volume_type           = "${var.kaapi_data_type[0]}"
    device_name           = "${var.kaapi_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.kaapi_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[1]}"
     Env     = "${var.env}"
     Name    = "${element(var.kaapi_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "kaapi_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.kaapi_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[1]}"
 }
}

resource "aws_instance" "kaapi_client_instance" {
   count                  = "${var.kaapi_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.kaapi_client_subnet, count.index)}"
   ami                    =  "${var.kaapi_ami}"
   instance_type          =  "${var.instance_type[3]}"
   key_name               =  "${var.key_name}"
iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.kaapi_sg_grps[0]}"]
   user_data = "${element(template_file.kaapi_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[1]}"
     Env     = "${var.env}"
     Name    = "${element(var.kaapi_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}

###############################################################################
#                       Romano
###############################################################################

resource "template_file" "romano_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.romano_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[2]}"
 }
}

resource "aws_instance" "romano_master_instance" {
   count                  = "${var.romano_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.romano_master_subnet, count.index)}"
   ami                    =  "${var.romano_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.romano_sg_grps[0]}"]
   user_data = "${element(template_file.romano_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[2]}"
     Env     = "${var.env}"
     Name    = "${element(var.romano_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "romano_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.romano_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[1]}"
	}
}

resource "aws_instance" "romano_data_instance" {
   count                  = "${var.romano_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.romano_data_subnet, count.index)}"
   ami                    =  "${var.romano_ami}"
   instance_type          =  "${var.instance_type[2]}"
   key_name               =  "${var.key_name}"
iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.romano_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.romano_data_size[0]}"
    volume_type           = "${var.romano_data_type[0]}"
    device_name           = "${var.romano_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.romano_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[2]}"
     Env     = "${var.env}"
     Name    = "${element(var.romano_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "romano_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.romano_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[2]}"
 }
}

resource "aws_instance" "romano_client_instance" {
   count                  = "${var.romano_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.romano_client_subnet, count.index)}"
   ami                    =  "${var.romano_ami}"
   instance_type          =  "${var.instance_type[3]}"
   key_name               =  "${var.key_name}"
iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.romano_sg_grps[0]}"]
   user_data = "${element(template_file.romano_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[2]}"
     Env     = "${var.env}"
     Name    = "${element(var.romano_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}

###############################################################################
#                          Espresso
##############################################################################
resource "template_file" "espresso_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.espresso_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[3]}"
 }
}

resource "aws_instance" "espresso_master_instance" {
   count                  = "${var.espresso_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.espresso_master_subnet, count.index)}"
   ami                    =  "${var.espresso_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   vpc_security_group_ids = ["${module.network.espresso_sg_grps[0]}"]
   user_data = "${element(template_file.americano_espresso_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[3]}"
     Env     = "${var.env}"
     Name    = "${element(var.espresso_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "espresso_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.espresso_master_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[3]}"
	}
}

resource "aws_instance" "espresso_data_instance" {
   count                  = "${var.espresso_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.espresso_data_subnet, count.index)}"
   ami                    =  "${var.espresso_ami}"
   instance_type          =  "${var.instance_type[0]}"
   key_name               =  "${var.key_name}"
   vpc_security_group_ids = ["${module.network.espresso_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.espresso_data_size[0]}"
    volume_type           = "${var.espresso_data_type[0]}"
    device_name           = "${var.espresso_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.espresso_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[3]}"
     Env     = "${var.env}"
     Name    = "${element(var.espresso_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

###############################################################################
#                          Breve
##############################################################################
resource "template_file" "breve_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.breve_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[4]}"
 }
}

resource "aws_instance" "breve_master_instance" {
   count                  = "${var.breve_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.breve_master_subnet, count.index)}"
   ami                    =  "${var.breve_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.breve_sg_grps[0]}"]
   user_data = "${element(template_file.breve_espresso_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[4]}"
     Env     = "${var.env}"
     Name    = "${element(var.breve_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "breve_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.breve_master_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[4]}"
	}
}

resource "aws_instance" "breve_data_instance" {
   count                  = "${var.breve_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.breve_data_subnet, count.index)}"
   ami                    =  "${var.breve_ami}"
   instance_type          =  "${var.instance_type[2]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.breve_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.breve_data_size[0]}"
    volume_type           = "${var.breve_data_type[0]}"
    device_name           = "${var.breve_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.breve_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[4]}"
     Env     = "${var.env}"
     Name    = "${element(var.breve_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

###############################################################################
#                       latte
###############################################################################

resource "template_file" "latte_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.latte_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[2]}"
 }
}

resource "aws_instance" "latte_master_instance" {
   count                  = "${var.latte_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.latte_master_subnet, count.index)}"
   ami                    =  "${var.latte_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.latte_sg_grps[0]}"]
   user_data = "${element(template_file.latte_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[5]}"
     Env     = "${var.env}"
     Name    = "${element(var.latte_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "latte_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.latte_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[5]}"
	}
}

resource "aws_instance" "latte_data_instance" {
   count                  = "${var.latte_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.latte_data_subnet, count.index)}"
   ami                    =  "${var.latte_ami}"
   instance_type          =  "${var.instance_type[4]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.latte_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.latte_data_size[0]}"
    volume_type           = "${var.latte_data_type[0]}"
    device_name           = "${var.latte_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.latte_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[5]}"
     Env     = "${var.env}"
     Name    = "${element(var.latte_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "latte_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.latte_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[5]}"
 }
}

resource "aws_instance" "latte_client_instance" {
   count                  = "${var.latte_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.latte_client_subnet, count.index)}"
   ami                    =  "${var.latte_ami}"
   instance_type          =  "${var.instance_type[5]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.latte_sg_grps[0]}"]
   user_data = "${element(template_file.latte_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[5]}"
     Env     = "${var.env}"
     Name    = "${element(var.latte_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}

###############################################################################
#                       Mazagran
###############################################################################

resource "template_file" "mazagran_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.mazagran_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[2]}"
 }
}

resource "aws_instance" "mazagran_master_instance" {
   count                  = "${var.mazagran_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.mazagran_master_subnet, count.index)}"
   ami                    =  "${var.mazagran_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile   = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.mazagran_sg_grps[0]}"]
   user_data = "${element(template_file.mazagran_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[6]}"
     Env     = "${var.env}"
     Name    = "${element(var.mazagran_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "mazagran_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.mazagran_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[6]}"
	}
}

resource "aws_instance" "mazagran_data_instance" {
   count                  = "${var.mazagran_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.mazagran_data_subnet, count.index)}"
   ami                    =  "${var.mazagran_ami}"
   instance_type          =  "${var.instance_type[2]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.mazagran_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.mazagran_data_size[0]}"
    volume_type           = "${var.mazagran_data_type[0]}"
    device_name           = "${var.mazagran_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.mazagran_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[6]}"
     Env     = "${var.env}"
     Name    = "${element(var.mazagran_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "mazagran_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.mazagran_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[6]}"
 }
}

resource "aws_instance" "mazagran_client_instance" {
   count                  = "${var.mazagran_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.mazagran_client_subnet, count.index)}"
   ami                    =  "${var.mazagran_ami}"
   instance_type          =  "${var.instance_type[3]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.mazagran_sg_grps[0]}"]
   user_data = "${element(template_file.mazagran_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[6]}"
     Env     = "${var.env}"
     Name    = "${element(var.mazagran_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}

###############################################################################
#                       Mocha
###############################################################################

resource "template_file" "mocha_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.mocha_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[2]}"
 }
}

resource "aws_instance" "mocha_master_instance" {
   count                  = "${var.mocha_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.mocha_master_subnet, count.index)}"
   ami                    =  "${var.mocha_ami}"
   instance_type          =  "${var.instance_type[6]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile   = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.mocha_sg_grps[0]}"]
   user_data = "${element(template_file.mocha_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[7]}"
     Env     = "${var.env}"
     Name    = "${element(var.mocha_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "mocha_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.mocha_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[7]}"
	}
}

resource "aws_instance" "mocha_data_instance" {
   count                  = "${var.mocha_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.mocha_data_subnet, count.index)}"
   ami                    =  "${var.mocha_ami}"
   instance_type          =  "${var.instance_type[8]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.mocha_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.mocha_data_size[0]}"
    volume_type           = "${var.mocha_data_type[0]}"
    device_name           = "${var.mocha_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.mocha_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[7]}"
     Env     = "${var.env}"
     Name    = "${element(var.mocha_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "mocha_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.mocha_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[7]}"
 }
}

resource "aws_instance" "mocha_client_instance" {
   count                  = "${var.mocha_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.mocha_client_subnet, count.index)}"
   ami                    =  "${var.mocha_ami}"
   instance_type          =  "${var.instance_type[6]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile   = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.mocha_sg_grps[0]}"]
   user_data = "${element(template_file.mocha_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[7]}"
     Env     = "${var.env}"
     Name    = "${element(var.mocha_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}

###############################################################################
#                       doppio
###############################################################################

resource "template_file" "doppio_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.doppio_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[8]}"
 }
}

resource "aws_instance" "doppio_master_instance" {
   count                  = "${var.doppio_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.doppio_master_subnet, count.index)}"
   ami                    =  "${var.doppio_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile   = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.doppio_sg_grps[0]}"]
   user_data = "${element(template_file.doppio_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[8]}"
     Env     = "${var.env}"
     Name    = "${element(var.doppio_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "doppio_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.doppio_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[8]}"
	}
}

resource "aws_instance" "doppio_data_instance" {
   count                  = "${var.doppio_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.doppio_data_subnet, count.index)}"
   ami                    =  "${var.doppio_ami}"
   instance_type          =  "${var.instance_type[2]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.doppio_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.doppio_data_size[0]}"
    volume_type           = "${var.doppio_data_type[0]}"
    device_name           = "${var.doppio_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.doppio_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[8]}"
     Env     = "${var.env}"
     Name    = "${element(var.doppio_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "doppio_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.doppio_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[8]}"
 }
}

resource "aws_instance" "doppio_client_instance" {
   count                  = "${var.doppio_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.doppio_client_subnet, count.index)}"
   ami                    =  "${var.doppio_ami}"
   instance_type          =  "${var.instance_type[3]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.doppio_sg_grps[0]}"]
   user_data = "${element(template_file.doppio_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[8]}"
     Env     = "${var.env}"
     Name    = "${element(var.doppio_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}


###############################################################################
#                       Ironbank
###############################################################################

resource "template_file" "ironbank_master_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.ironbank_master_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[9]}"
 }
}

resource "aws_instance" "ironbank_master_instance" {
   count                  = "${var.ironbank_master_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.ironbank_master_subnet, count.index)}"
   ami                    =  "${var.ironbank_ami}"
   instance_type          =  "${var.instance_type[1]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile   = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.ironbank_sg_grps[0]}"]
   user_data = "${element(template_file.ironbank_master_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[9]}"
     Env     = "${var.env}"
     Name    = "${element(var.ironbank_master_servername, count.index)}"
     Type    =  "ElasticSearchMaster"
     Vpc     = "Yes"

   }
}
###############################################################################
resource "template_file" "ironbank_data_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.ironbank_data_servercount}"
    vars {
		region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[9]}"
	}
}

resource "aws_instance" "ironbank_data_instance" {
   count                  = "${var.ironbank_data_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.ironbank_data_subnet, count.index)}"
   ami                    =  "${var.ironbank_ami}"
   instance_type          =  "${var.instance_type[0]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.ironbank_sg_grps[0]}"]

   ebs_block_device {
    volume_size           = "${var.ironbank_data_size[0]}"
    volume_type           = "${var.ironbank_data_type[0]}"
    device_name           = "${var.ironbank_data_ebs[0]}"
    delete_on_termination = "false"

  }
   user_data = "${element(template_file.ironbank_data_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[9]}"
     Env     = "${var.env}"
     Name    = "${element(var.ironbank_data_servername, count.index)}"
     Type    =  "ElasticSearchData"
     Vpc     = "Yes"

   }
}

################################################################################
resource "template_file" "ironbank_client_userdata" {
    template = "${file("${path.root}/userdata.txt")}"
	  count = "${var.ironbank_client_servercount}"
    vars {
    region        =  "${var.region}"
    appname       =  "${var.appname}"
    env           =  "${var.env}"
    cluster_name  =  "${var.cluster_name[9]}"
 }
}

resource "aws_instance" "ironbank_client_instance" {
   count                  = "${var.ironbank_client_servercount}"
   #availability_zone      = "${element(var.az, count.index + 1)}"
   subnet_id              = "${module.network.element(var.ironbank_client_subnet, count.index)}"
   ami                    =  "${var.ironbank_ami}"
   instance_type          =  "${var.instance_type[3]}"
   key_name               =  "${var.key_name}"
   iam_instance_profile        = "${var.iam_instance_profile}"
   vpc_security_group_ids = ["${module.network.ironbank_sg_grps[0]}"]
   user_data = "${element(template_file.ironbank_client_userdata.*.rendered, count.index)}"
   tags {
     Cluster = "${var.cluster_name[9]}"
     Env     = "${var.env}"
     Name    = "${element(var.ironbank_client_servername, count.index)}"
     Type    =  "ElasticSearchClient"
     Vpc     = "Yes"

   }
}

##############################################################################
#  				Outputs
##############################################################################

output "americano_master_instance_ids" {
  value = "${join(",", americano_master_instance.instance.*.id)}"
}

output "americano_data_instance_ids" {
  value = "${join(",", americano_data_instance.instance.*.id)}"
}
###########################################################################
output "kaapi_master_instance_ids" {
  value = "${join(",", kaapi_master_instance.instance.*.id)}"
}

output "kaapi_data_instance_ids" {
  value = "${join(",", kaapi_data_instance.instance.*.id)}"
}

output "kaapi_client_instance_ids" {
  value = "${join(",", kaapi_client_instance.instance.*.id)}"
}
###############################################################################
output "romano_master_instance_ids" {
  value = "${join(",", romano_master_instance.instance.*.id)}"
}

output "romano_data_instance_ids" {
  value = "${join(",", romano_data_instance.instance.*.id)}"
}

output "romano_client_instance_ids" {
  value = "${join(",", romano_client_instance.instance.*.id)}"
}
###############################################################################
output "espresso_master_instance_ids" {
  value = "${join(",", espresso_master_instance.instance.*.id)}"
}

output "espresso_data_instance_ids" {
  value = "${join(",", espresso_data_instance.instance.*.id)}"
}
################################################################################
output "breve_master_instance_ids" {
  value = "${join(",", breve_master_instance.instance.*.id)}"
}

output "breve_data_instance_ids" {
  value = "${join(",", breve_data_instance.instance.*.id)}"
}
###############################################################################
output "latte_master_instance_ids" {
  value = "${join(",", latte_master_instance.instance.*.id)}"
}

output "latte_data_instance_ids" {
  value = "${join(",", latte_data_instance.instance.*.id)}"
}

output "latte_client_instance_ids" {
  value = "${join(",", latte_client_instance.instance.*.id)}"
}

###############################################################################
output "mazagran_master_instance_ids" {
  value = "${join(",", mazagran_master_instance.instance.*.id)}"
}

output "mazagran_data_instance_ids" {
  value = "${join(",", mazagran_data_instance.instance.*.id)}"
}

output "mazagran_client_instance_ids" {
  value = "${join(",", mazagran_client_instance.instance.*.id)}"
}
###############################################################################
output "mocha_master_instance_ids" {
  value = "${join(",", mocha_master_instance.instance.*.id)}"
}

output "mocha_data_instance_ids" {
  value = "${join(",", mocha_data_instance.instance.*.id)}"
}

output "mocha_client_instance_ids" {
  value = "${join(",", mocha_client_instance.instance.*.id)}"
}
###############################################################################
output "doppio_master_instance_ids" {
  value = "${join(",", doppio_master_instance.instance.*.id)}"
}

output "doppio_data_instance_ids" {
  value = "${join(",", doppio_data_instance.instance.*.id)}"
}

output "doppio_client_instance_ids" {
  value = "${join(",", doppio_client_instance.instance.*.id)}"
}

###############################################################################
output "ironbank_master_instance_ids" {
  value = "${join(",", ironbank_master_instance.instance.*.id)}"
}

output "ironbank_data_instance_ids" {
  value = "${join(",", ironbank_data_instance.instance.*.id)}"
}

output "ironbank_client_instance_ids" {
  value = "${join(",", ironbank_client_instance.instance.*.id)}"
}
