region                      =	"us-west-2"
env                         =	"dev"
appname                     =	"poshmark"
bu                          =	"it"
#az                          = ["us-west-2a","us-west-2b","us-west-2c"]
az_conv                     = ["b","c"]
cluster_name                = ["Americano","kaapi","Romano","Espresso",
                               "Breve","Latte","Mazagran","Mocha",
                               "Doppio","Ironbank"]
instance_type               = ["m4.xlarge","m3.medium","c4.2xlarge","c4.large","c4.4xlarge",
                               "c4.xlarge","m4.large","r3.2xlarge"]
iam_instance_profile        = "elasticsearch"
##############################--AMERICANO--##########################################################################
americano_ami                = ""
americano_master_servercount = 3
americano_data_servercount   = 4
americano_data_servername   = ["americano-data01-b","americano-data01-c","americano-data02-b","americano-data02-c"]
americano_sg_grps           = ["elasticsearchdata-asg3-id"]
americano_data_subnet       = ["as3-id","as4-id"]
americano_data_ebs          = ["/dev/sdf"]
americano_data_size         = ["100"]
americano_data_type         = ["gp2"]
americano_master_subnet     = ["as11-id","as11-id","as12-id"]
americano_master_servername = ["americano-master01","americano-master02","americano-master03"]

###################################--Kaapi--#########################################################################
kaapi_ami                = ""
kaapi_sg_grps           = ["elasticsearchclient-asg1-id"]
kaapi_master_servercount = 3
kaapi_master_subnet     = ["as3-id","as3-id","as4-id"]
kaapi_master_servername = ["americano-master01","americano-master02","americano-master03"]
kaapi_data_servercount   = 4
kaapi_data_servername   = ["kaapi-data01-b","kaapi-data01-c","kaapi-data02-b","kaapi-data02-c"]
kaapi_data_subnet       = ["as3-id","as4-id"]
kaapi_data_ebs          = ["/dev/sdf"]
kaapi_data_size         = ["100"]
kaapi_data_type         = ["gp2"]
kaapi_client_servercount = 4
kappi_client_subnet     = ["as11-id","as12-id"]
kappi_client_servername = ["kaapi-client01-b","kaapi-client01-c","kaapi-client02-b","kaapi-client02-c"]

#########################################--Romano--###################################################################
romano_ami                = ""
romano_sg_grps           = ["elasticsearchclient-asg2-id"]
romano_master_servercount = 3
romano_master_subnet     = ["as11-id","as11-id","as12-id"]
romano_master_servername = ["romano-master01","romano-master02","romano-master03"]
romano_data_servercount   = 4
romano_data_servername   = ["romano-data01-b","romano-data01-c","romano-data02-b","romano-data02-c"]
romano_data_subnet       = ["as11-id","as12-id"]
romano_data_ebs          = ["/dev/sdf"]
romano_data_size         = ["100"]
romano_data_type         = ["gp2"]
romano_client_servercount = 4
romano_client_subnet     = ["as11-id","as12-id"]
romano_client_servername = ["romano-client01-b","romano-client01-c","romano-client02-b","romano-client02-c"]
########################################--Espresso--##################################################################
espresso_ami                = ""
espresso_sg_grps           = ["elasticsearchdata-asg2-id"]
espresso_master_servercount = 3
espresso_master_subnet     = ["as11-id","as11-id","as12-id"]
espresso_master_servername = ["espresso-master01","espresso-master02","espresso-master03"]
espresso_data_servercount   = 4
espresso_data_servername   = ["espresso-data01-b","espresso-data01-c","espresso-data02-b","espresso-data02-c"]
espresso_data_subnet       = ["as11-id","as12-id"]
espresso_data_ebs          = ["/dev/sdf"]
espresso_data_size         = ["100"]
espresso_data_type         = ["gp2"]
########################################--Breve--######################################################################
breve_ami                = ""
breve_sg_grps           = ["elasticsearchdata-asg1-id"]
breve_master_servercount = 3
breve_master_subnet     = ["as11-id","as11-id","as12-id"]
breve_master_servername = ["breve-master01","breve-master02","breve-master03"]
breve_data_servercount   = 4
breve_data_servername   = ["breve-data01-b","breve-data01-c","breve-data02-b","breve-data02-c"]
breve_data_subnet       = ["as11-id","as12-id"]
breve_data_ebs          = ["/dev/sdf"]
breve_data_size         = ["100"]
breve_data_type         = ["gp2"]

################################--Latte--##################################################################################
latte_ami                = ""
latte_sg_grps           = ["elasticsearchdata-asg0-id"]
latte_master_servercount = 3
latte_master_subnet     = ["as11-id","as11-id","as12-id"]
latte_master_servername = ["latte-master01","latte-master02","latte-master03"]
latte_data_servercount   = 64
latte_data_servername   = ["latte-data01-b","latte-data01-c","romano-data02-b","romano-data02-c",
                           "latte-data03-b","latte-data03-c","latte-data04-b","latte-data04-c",
                           "latte-data05-b","latte-data05-c","latte-data06-b","latte-data06-c",
                           "latte-data07-b","latte-data07-c","latte-data08-b","latte-data08-c",
                           "latte-data09-b","latte-data09-c","latte-data010-b","latte-data010-c",
                           "latte-data011-b","latte-data011-c","latte-data012-b","latte-data012-c",
                           "latte-data013-b","latte-data013-c","latte-data014-b","latte-data014-c",
                           "latte-data015-b","latte-data015-c","latte-data016-b","latte-data016-c",
                           "latte-data017-b","latte-data017-c","latte-data018-b","latte-data018-c",
                           "latte-data019-b","latte-data019-c","latte-data020-b","latte-data020-c",
                           "latte-data021-b","latte-data021-c","latte-data022-b","latte-data022-c",
                           "latte-data023-b","latte-data023-c","latte-data024-b","latte-data024-c",
                           "latte-data025-b","latte-data025-c","latte-data026-b","latte-data026-c",
                           "latte-data027-b","latte-data027-c","latte-data028-b","latte-data028-c",
                           "latte-data029-b","latte-data029-c","latte-data030-b","latte-data030-c",
                           "latte-data031-b","latte-data031-c","latte-data032-b","latte-data032-c"
                           ]
latte_data_subnet       = ["as11-id","as12-id"]
latte_data_ebs          = ["/dev/sdf"]
latte_data_size         = ["100"]
latte_data_type         = ["gp2"]
latte_client_servercount = 12
latte_client_subnet     = ["as11-id","as12-id"]
latte_client_servername = ["latte-client01-b","latte-client01-c","latte-client02-b","latte-client02-c",
                           "latte-client03-b","latte-client03-c","latte-client04-b","latte-client04-c",
                           "latte-client05-b","latte-client05-c","latte-client06-b","latte-client06-c"
                         ]
#####################################--Mazagran--###########################################################
mazagran_ami                = ""
mazagran_sg_grps           = ["elasticsearchclient-asg5-id"]
mazagran_master_servercount = 3
mazagran_master_subnet     = ["as11-id","as11-id","as12-id"]
mazagran_master_servername = ["mazagran-master01","mazagran-master02","mazagran-master03"]
mazagran_data_servercount   = 8
mazagran_data_servername   = ["mazagran-data01-b","mazagran-data01-c","mazagran-data02-b","mazagran-data02-c",
                              "mazagran-data03-b","mazagran-data03-c","mazagran-data04-b","mazagran-data04-c"
                             ]
mazagran_data_subnet       = ["as11-id","as12-id"]
mazagran_data_ebs          = ["/dev/sdf"]
mazagran_data_size         = ["100"]
mazagran_data_type         = ["gp2"]
mazagran_client_servercount = 6
mazagran_client_subnet     = ["as11-id","as12-id"]
mazagran_client_servername = ["mazagran-client01-b","mazagran-client01-c","mazagran-client02-b","mazagran-client02-c",
                              "mazagran-client03-b","mazagran-client03-c"]
                             ]
  #################################--Mocha--#####################################################################
  mocha_ami                = ""
  mocha_sg_grps           = ["elasticsearchclient-asg0-id"]
  mocha_master_servercount = 3
  mocha_master_subnet     = ["as11-id","as11-id","as12-id"]
  mocha_master_servername = ["mocha-master01","mocha-master02","mocha-master03"]
  mocha_data_servercount   = 20
  mocha_data_servername   = ["mocha-data01-b","mocha-data01-c","mocha-data02-b","mocha-data02-c",
                             "mocha-data03-b","mocha-data03-c","mocha-data04-b","mocha-data04-c"
                             "mocha-data05-b","mocha-data05-c","mocha-data06-b","mocha-data06-c"
                             "mocha-data07-b","mocha-data07-c","mocha-data08-b","mocha-data08-c"
                             "mocha-data09-b","mocha-data09-c","mocha-data010-b","mocha-data10-c"
                               ]
  mocha_data_subnet       = ["as11-id","as12-id"]
  mocha_data_ebs          = ["/dev/sdf"]
  mocha_data_size         = ["100"]
  mocha_data_type         = ["gp2"]
  mocha_client_servercount = 8
  mocha_client_subnet     = ["as11-id","as12-id"]
  mocha_client_servername = ["mocha-client01-b","mocha-client01-c","mocha-client02-b","mocha-client02-c",
                             "mocha-client03-b","mocha-client03-c","mocha-client04-b","mocha-client04-c"
                            ]

###################################--Doppio--#################################################################
doppio_ami                = ""
doppio_sg_grps           = ["elasticsearchclient-asg3-id"]
doppio_master_servercount = 3
doppio_master_subnet     = ["as11-id","as11-id","as12-id"]
doppio_master_servername = ["doppio-master01","doppio-master02","doppio-master03"]
doppio_data_servercount   = 8
doppio_data_servername   = ["doppio-data01-b","doppio-data01-c","doppio-data02-b","doppio-data02-c",
                              "doppio-data03-b","doppio-data03-c","doppio-data04-b","doppio-data04-c"
                             ]
doppio_data_subnet       = ["as11-id","as12-id"]
doppio_data_ebs          = ["/dev/sdf"]
doppio_data_size         = ["100"]
doppio_data_type         = ["gp2"]
doppio_client_servercount = 5
doppio_client_subnet     = ["as11-id","as12-id"]
doppio_client_servername = ["doppio-client01-b","doppio-client01-c","doppio-client02-b","doppio-client02-c",
                            "doppio-client04-b"]

###################################--Ironbank--#################################################################
ironbank_ami                = ""
ironbank_sg_grps           = ["elasticsearchclient-asg3-id"]
ironbank_master_servercount = 3
ironbank_master_subnet     = ["as11-id","as11-id","as12-id"]
ironbank_master_servername = ["ironbank-master01","ironbank-master02","ironbank-master03"]
ironbank_data_servercount   = 8
ironbank_data_servername   = ["ironbank-data01-b","ironbank-data01-c","ironbank-data02-b","ironbank-data02-c",
                              "ironbank-data03-b","ironbank-data03-c","ironbank-data04-b","ironbank-data04-c"
                             ]
ironbank_data_subnet       = ["as11-id","as12-id"]
ironbank_data_ebs          = ["/dev/sdf"]
ironbank_data_size         = ["100"]
ironbank_data_type         = ["gp2"]
ironbank_client_servercount = 6
ironbank_client_subnet     = ["as11-id","as12-id"]
ironbank_client_servername = ["ironbank-client01-b","ironbank-client01-c","ironbank-client02-b","ironbank-client02-c"]
