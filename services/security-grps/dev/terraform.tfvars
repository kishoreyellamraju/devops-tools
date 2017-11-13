region                    =	"us-west-2"
env                       =	"dev"
appname                   =	"poshmark"
bu                        =	"it"
type                      = ["Access","App",
                             "JenkinsMaster","elb",
                             "no-tag","batch",
                             "queueworker","worker",
                             "haproxy","cluster",
                             "collector","elasticsearchclient",
                             "ElasticSearchData","EMR",
                             "FTP","Kibana",
                             "ipsec","JenkinsSlave",
                             "LogsQueue","MongoDb",
                             "MongoS","NewRelic",
                             "poshfit","qubole",
                             "Redis","TwemProxy",
                             "Spark","SquidProxy",
                             "S3Basin","intacct",
                             "MMS","MongoConfigsvr"]

access_sg_name            = ["spark-access","production-rb-bastion","production-gateway","production-access"]
app_sg_name               = ["production-app"," production-yaga-app","production-rb-app","production-vault-app"]
jenkinsmaster_sg_name     = ["production-jenkins","skynet-master"]
mms_sg_name               = ["production-mmsagent"]
elb_sg_name               = ["production-app-elb","production-cloudfront-app-elb",
                             "Production-poshcrew-ALB","production-yaga-app-elb",
                             "production-skynet-app-elb","Production-poshcrew-ALB-test",
                             "production-rb-app-elb","changelog-sg-elb","production-mocha-elb",
                             "production-search-haproxy-elb","production-redis-haproxy-elb",
                             "poshfit-elb-sg","coeus-alb-sg"
                           ]
no-tag_sg_name            = ["app-testing-siege","production-testing-mocha",
                             "production-ato","prod-coeus-oauthproxy",
                             "production-elastalert-slave","production-control","skynet-slave",
                             "production-replay-consumer","cerberus-temp","production-ut-app-vpc"]

batch_sg_name             = ["production-batch","production-yaga-batch"]
queueworker_sg_name       = ["production-qw","production-queue"]
worker_sg_name            = ["production-yaga-worker"]
haproxy_sg_name           = ["production-vault-haproxy","production-mocha-haproxy",
                             "production-search-haproxy","production-redis-haproxy"
                            ]
cluster_sg_name           = ["production-anthracite","production-changelog"]
collector_sg_name         = ["production-yaga-consumer"]
elasticsearchclient_sg_name = ["production-search-mocha","production-search-kaapi",
                               "production-search-romano","production-search-doppio",
                               "production-search-ironbank","production-search-mazagran"
                              ]
elasticsearchdata_sg_name  = ["production-search-latte","production-search-breve",
                              "production-search-espresso","production-search-americano"
                             ]
emr_sg_name                = ["ElasticMapReduce-master","ElasticMapReduce-slave"]
ftp_sg_name                = ["partner-ftp"]
kibana_sg_name             = ["production-kibana-consumer"]
ipsec_sg_name              = ["production-ipsec","production-ipsec-monitoring"]
intacct_sg_name            = ["production-intacct"]
jenkinsslave_sg_name       = ["prod-credentials","skynet-credentials"]
logsqueue_sg_name          = ["production-logs-queue"]
mongodb_sg_name            = ["production-db-reporting","production-db","production-yaga-db","production-vault-db"]
mongoconfigsvr_sg_name     = ["production-configsvr"]
mongos_sg_name             = ["production-mongos"]
newrelic_sg_name           = ["newrelic_aws"]
poshfit_sg_name            = ["poshfit-server"]
qubole_sg_name             = ["@sc-qbol_acc4126_cl30531"]
redis_sg_name              = ["production-redis-userdata","cerberus","production-redis-cache",
                              "sidekiq-redis-data","production-redis-data","stormlight"]
twemproxy_sg_name          = ["production-twemproxy","cerberus-twemproxy"]
spark_sg_name              = ["production-spark"]
spark_sg_name              = ["production-spark"]
squidproxy_sg_name         = ["production-squid"]
s3basin_sg_name            = ["production-s3-basin"]
