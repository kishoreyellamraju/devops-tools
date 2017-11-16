region                                   =	"us-west-2"
env                                      =	"prod"
appname                                  =  "poshmark"
bu                                       =  "it"
az                                       =  ["NA","us-west-2a","us-west-2b","us-west-2c"]
cluster                                  =  ["NA","Search","Database","Redis"]
type                                     =  ["NA","Private","Public"]
#############################Subnet name#######################################

subnet_cidr = {
    sparkemrpublic1b             =  "10.0.0.0/24"
    sparkemrpublic1c             =  "10.0.1.0/24"
    publicsubnetb                =  "10.1.0.0/24"
    publicsubnetc                =  "10.1.1.0/24"
    searchprivatesubnet1b        =  "10.1.2.0/24"
    searchprivatesubnet1c        =  "10.1.3.0/24"
    apppublicsubnetb             =  "10.1.16.0/21"
    apppublicsubnetc             =  "10.1.24.0/21"
    databaseprivatesubnetb       =  "10.1.32.0/21"
    databaseprivatesubnetc       =  "10.1.40.0/21"
    redisprivatesubnetb          =  "10.1.48.0/21"
    redisprivatesubnetc          =  "10.1.56.0/21"
    searchprivatesubnet2b        =  "10.1.64.0/21"
    searchprivatesubnet2c        =  "10.1.72.0/21"
    poshfit                      =  "10.1.100.0/24"
    other                        =  "10.1.101.0/24"
    vpnmonitoringprivatesubnetb  =  "10.1.102.0/24"
    vpnmonitoringprivatesubnetc  =  "10.1.103.0/24"
    skynetprivatesubnetb         =  "10.1.104.0/21"
}
#############################Subnet cidr#######################################
subnet_name = {
    sparkemrpublic1b             =  "Public subnet"
    sparkemrpublic1c             =  "spark_emr-public-1c"
    publicsubnetb                =  "Public subnet (us-west-2b)"
    publicsubnetc                =  "Public subnet (us-west-2c)"
    searchprivatesubnet1b        =  "Search - private subnet (us-west-2b)"
    searchprivatesubnet1c        =  "Search - private subnet (us-west-2c)"
    apppublicsubnetb             =  "App - Public subnet (us-west-2b)"
    apppublicsubnetc             =  "App - Public subnet (us-west-2c)"
    databaseprivatesubnetb       =  "Database - Private subnet (us-west-2b)"
    databaseprivatesubnetc       =  "Database - Private subnet (us-west-2c)"
    redisprivatesubnetb          =  "Redis - Private subnet (us-west-2b)"
    redisprivatesubnetc          =  "Redis - Private subnet (us-west-2c)"
    searchprivatesubnet2b        =  "Search - Private subnet (us-west-2b)"
    searchprivatesubnet2c        =  "Search - Private subnet (us-west-2c)"
    poshfit                      =  "poshfit"
    other                        =  "other"
    vpnmonitoringprivatesubnetb  =  "VPN Monitoring - Private Subnet (us-west-2b)"
    vpnmonitoringprivatesubnetc  =  "VPN Monitoring - Private Subnet (us-west-2c)"
    skynetprivatesubnetb         =  "Skynet - Private Subnet (us-west-2b)"
}
