region                      =	"us-west-2"
env                         =	"dev"
appname                     =	"poshmark"
bu                          =	"it"
#az                          = ["us-west-2a","us-west-2b","us-west-2c"]
instance_type               = ["m4.xlarge","m3.medium","c4.2xlarge","c4.large","c4.4xlarge",
                               "c4.xlarge","m4.large","r3.2xlarge","m3.xmedium","r3.2xlarge"]
 cluster_name                = ["ConfigServer","Gandalf"]
 key_name                    = ""
##############################--MongoConfigsrv-#####################################
mongoconfigsvr_ami          = ""
mongoconfigsvr_servercount  = 3
mongoconfigsvr_servername   = ["prod-configsvr1","prod-configsvr2","prod-configsvr3"]
mongoconfigsvr_sg_grps      = ["mongoconfigsvr-asg0-id"]
mongoconfigsvr_subnet       = ["as7-id","as7-id","as8-id"]
mongoconfigsvr_ebs          = ["/dev/sdf"]
mongoconfigsvr_size         = ["100"]
mongoconfigsvr_type         = ["gp2"]

##############################--MongoDB__primary_GANDALF-#####################################
mongodb_gandalf_primary_ami          = ""
mongodb_gandalf_primary_servercount  = 18
mongodb_gandalf_primary_servername   = ["gandalf-a1","gandalf-b2","gandalf-c1","gandalf-d1","gandalf-e1",
                                        "gandalf-f2","gandalf-g2","gandalf-h2","gandalf-i1","gandalf-j4",
                                        "gandalf-k1","gandalf-l2","gandalf-m2","gandalf-n1","gandalf-o1",
                                        "gandalf-p1","gandalf-q1","gandalf-r1"]
mongodb_gandalf_primary_sg_grps      = ["mongodb-asg0-id","mongodb-asg1-id"]
mongodb_gandalf_primary_subnet       = ["as7-id","as11-id","as11-id","as7-id","as7-id","as7-id","as7-id",
                                        "as7-id","as11-id","as8-id","as7-id","as11-id","as7-id","as7-id",
                                        "as7-id","as7-id","as7-id","as7-id"]
mongodb_gandalf_primary_ebs          = ["/dev/sdf"]
mongodb_gandalf_primary_size         = ["2048"]
mongodb_gandalf_primary_type         = ["io1"]
##############################--MongoDB__secondary_GANDALF-#####################################
mongodb_gandalf_secondary_ami          = ""
mongodb_gandalf_secondary_servercount  =
mongodb_gandalf_secondaryreporting_servercount  =
mongodb_gandalf_secondary_servername   = ["gandalf-a2","gandalf-a4","gandalf-b1","gandalf-b4","gandalf-c2",
                                          "gandalf-c4","gandalf-d2","gandalf-d4","gandalf-e2","gandalf-e4",
                                          "gandalf-f1","gandalf-f4","gandalf-g1","gandalf-g4","gandalf-h1",
                                          "gandalf-h4","gandalf-i2","gandalf-i4","gandalf-j1",""]

mongodb_gandalf_secondary_subnet       = ["as11-id","as8-id","as7-id","as8-id","as7-id","as8-id","as11-id",
                                          "as8-id","as11-id","as11-id","as11-id","as8-id","as11-id","as11-id"
                                          "as11-id","as11-id","as7-id","as8-id"]
mongodb_gandalf_secondaryreporting_servername   = ["gandalf-a3","gandalf-b3","gandalf-c3","gandalf-d3","gandalf-e3"
                                                   "gandalf-f3","gandalf-g3","gandalf-h3","gandalf-i3"]
mongodb_gandalf_secondaryreporting_subnet       = ["as8-id"]
mongodb_gandalf_secondary_ebs          = ["/dev/sdf"]
mongodb_gandalf_secondary_size         = ["2048"]
mongodb_gandalf_secondary_type         = ["io1"]

##############################--MongoDB__secondary_reporting_GANDALF-#####################################
