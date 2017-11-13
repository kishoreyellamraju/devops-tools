region                 =	"us-west-2"
env                    =	"prod"
subnet_cidr            =	["10.0.0.0/24","10.0.0.0/24",
                           "10.0.1.0/24","10.0.2.0/24",
                           "10.0.3.0/24","10.0.16.0/21",
                           "10.0.24.0/21","10.0.32.0/21",
                           "10.0.40.0/21","10.0.48.0/21",
                           "10.0.56.0/21","10.0.64.0/21",
                           "10.0.72.0/21","10.0.100.0/24",
                           "10.0.101.0/24","10.0.102.0/24",
                           "10.0.103.0/24","10.0.104.0/21",
                           "10.0.1.0/24"
                          ]

subnet_name            =	["Public subnet","Public subnet (us-west-2b)",
                           "Public subnet (us-west-2c)","Search - private subnet (us-west-2b)",
                           "Search - private subnet (us-west-2c)","App - Public subnet (us-west-2b)",
                           "App - Public subnet (us-west-2c)","Database - Private subnet (us-west-2b)",
                           "Database - Private subnet (us-west-2c)","Redis - Private subnet (us-west-2b)",
                           "Redis - Private subnet (us-west-2c)","Search - Private subnet (us-west-2b)",
                           "Search - Private subnet (us-west-2c)","poshfit",
                           "unknow","VPN Monitoring - Private Subnet (us-west-2b)",
                           "VPN Monitoring - Private Subnet (us-west-2c)","Skynet - Private Subnet (us-west-2b)",
                           "spark_emr-public-1c"
                          ]
appname                =	"poshmark"
bu                     =	"it"
az                     =  ["NA","us-west-2a","us-west-2b","us-west-2c"]
cluster                =  ["NA","Search","Database","Redis"]
type                   =  ["NA","Private","Public"]
