/*
 ########################################################
 Author: Sarvesh Shetty
 Date :5th July,2017
 description : main file to add sg grps in aws


 ########################################################
*/

data "terraform_remote_state" "sg" {
  backend = "s3"
  config {
    region	= "us-west-2"
	bucket	= "${var.bucket}"
	key 	= "${lookup(var.tf-state,var.env)}/cfg.${var.app}/security-grps/terraform.tfstate"
  }
}

#########################################################
#  OUTPUTS
#
#########################################################
output "production-search-latte-id" {
	value="${data.terraform_remote_state.sg.production-search-latte-id}"
}

###################################################################################################

output "production-vault-db-id" {
	value="${data.terraform_remote_state.sg.production-vault-db-id}"
}

###################################################################################################

output "spark-qubole-id" {
	value="${data.terraform_remote_state.sg.spark-qubole-id}"
}

###################################################################################################

output "sidekiq-redis-data-id" {
	value="${data.terraform_remote_state.sg.sidekiq-redis-data-id}"
}

###################################################################################################

output "skynet-master-id" {
	value="${data.terraform_remote_state.sg.skynet-master-id}"
}

###################################################################################################

output "production-reporting-gateway-id" {
	value="${data.terraform_remote_state.sg.production-reporting-gateway-id}"
}

###################################################################################################

output "production-replay-producer-id" {
	value="${data.terraform_remote_state.sg.production-replay-producer-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl35425-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl35425-id}"
}

###################################################################################################

output "poshfit-server-id" {
	value="${data.terraform_remote_state.sg.poshfit-server-id}"
}

###################################################################################################

output "production-yaga-app-elb-id" {
	value="${data.terraform_remote_state.sg.production-yaga-app-elb-id}"
}

###################################################################################################

output "production-search-breve-id" {
	value="${data.terraform_remote_state.sg.production-search-breve-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl30531-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl30531-id}"
}

###################################################################################################

output "prod-credentials-id" {
	value="${data.terraform_remote_state.sg.prod-credentials-id}"
}

###################################################################################################

output "production-vault-haproxy-id" {
	value="${data.terraform_remote_state.sg.production-vault-haproxy-id}"
}

###################################################################################################

output "launch-wizard-1-id" {
	value="${data.terraform_remote_state.sg.launch-wizard-1-id}"
}

###################################################################################################

output "production-testing-db-id" {
	value="${data.terraform_remote_state.sg.production-testing-db-id}"
}

###################################################################################################

output "production-test-id" {
	value="${data.terraform_remote_state.sg.production-test-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl28187-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl28187-id}"
}

###################################################################################################

output "production-static-app-id" {
	value="${data.terraform_remote_state.sg.production-static-app-id}"
}

###################################################################################################

output "production-redis-data-id" {
	value="${data.terraform_remote_state.sg.production-redis-data-id}"
}

###################################################################################################

output "production-jenkins-id" {
	value="${data.terraform_remote_state.sg.production-jenkins-id}"
}

###################################################################################################

output "production-logs-queue-id" {
	value="${data.terraform_remote_state.sg.production-logs-queue-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl10431-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl10431-id}"
}

###################################################################################################

output "vpc-testing-id" {
	value="${data.terraform_remote_state.sg.vpc-testing-id}"
}

###################################################################################################

output "production-search-cortado-id" {
	value="${data.terraform_remote_state.sg.production-search-cortado-id}"
}

###################################################################################################

output "production-access-id" {
	value="${data.terraform_remote_state.sg.production-access-id}"
}

###################################################################################################

output "sc-qbol_acc7385_cl40070-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc7385_cl40070-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl40112-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl40112-id}"
}

###################################################################################################

output "production-warm-id" {
	value="${data.terraform_remote_state.sg.production-warm-id}"
}

###################################################################################################

output "production-vault-app-id" {
	value="${data.terraform_remote_state.sg.production-vault-app-id}"
}

###################################################################################################

output "production-replay-consumer-id" {
	value="${data.terraform_remote_state.sg.production-replay-consumer-id}"
}

###################################################################################################

output "production-db-id" {
	value="${data.terraform_remote_state.sg.production-db-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl21611-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl21611-id}"
}

###################################################################################################

output "production-gateway-id" {
	value="${data.terraform_remote_state.sg.production-gateway-id}"
}

###################################################################################################

/*output "default-id" {
	value="${data.terraform_remote_state.sg.default-id}"
}*/

###################################################################################################

output "sc-qbol_acc4126_cl35356-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl35356-id}"
}

###################################################################################################

output "production-search-ironbank-id" {
	value="${data.terraform_remote_state.sg.production-search-ironbank-id}"
}

###################################################################################################

output "production-kibana-consumer-id" {
	value="${data.terraform_remote_state.sg.production-kibana-consumer-id}"
}

###################################################################################################

output "production-configsvr-id" {
	value="${data.terraform_remote_state.sg.production-configsvr-id}"
}

###################################################################################################

output "production-mongos-id" {
	value="${data.terraform_remote_state.sg.production-mongos-id}"
}

###################################################################################################

output "production-twemproxy-id" {
	value="${data.terraform_remote_state.sg.production-twemproxy-id}"
}

###################################################################################################

output "production-lambda-id" {
	value="${data.terraform_remote_state.sg.production-lambda-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl39867-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl39867-id}"
}

###################################################################################################

output "production-replay-queue-id" {
	value="${data.terraform_remote_state.sg.production-replay-queue-id}"
}

###################################################################################################

output "production-app-elb-id" {
	value="${data.terraform_remote_state.sg.production-app-elb-id}"
}

###################################################################################################

output "production-search-mocha-id" {
	value="${data.terraform_remote_state.sg.production-search-mocha-id}"
}

###################################################################################################

output "production-search-romano-id" {
	value="${data.terraform_remote_state.sg.production-search-romano-id}"
}

###################################################################################################

output "production-skynet-app-elb-id" {
	value="${data.terraform_remote_state.sg.production-skynet-app-elb-id}"
}

###################################################################################################

output "coeus-alb-sg-id" {
	value="${data.terraform_remote_state.sg.coeus-alb-sg-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl37583-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl37583-id}"
}

###################################################################################################

output "production-anthracite-id" {
	value="${data.terraform_remote_state.sg.production-anthracite-id}"
}

###################################################################################################

output "production-batch-id" {
	value="${data.terraform_remote_state.sg.production-batch-id}"
}

###################################################################################################

output "production-search-haproxy-elb-id" {
	value="${data.terraform_remote_state.sg.production-search-haproxy-elb-id}"
}

###################################################################################################

output "production-ipsec-monitoring-id" {
	value="${data.terraform_remote_state.sg.production-ipsec-monitoring-id}"
}

###################################################################################################

output "production-search-doppio-id" {
	value="${data.terraform_remote_state.sg.production-search-doppio-id}"
}

###################################################################################################

output "production-yaga-db-id" {
	value="${data.terraform_remote_state.sg.production-yaga-db-id}"
}

###################################################################################################

output "production-redis-haproxy-elb-id" {
	value="${data.terraform_remote_state.sg.production-redis-haproxy-elb-id}"
}

###################################################################################################

output "production-cloudfront-app-elb-id" {
	value="${data.terraform_remote_state.sg.production-cloudfront-app-elb-id}"
}

###################################################################################################

output "production-squid-id" {
	value="${data.terraform_remote_state.sg.production-squid-id}"
}

###################################################################################################

output "production-search-haproxy-id" {
	value="${data.terraform_remote_state.sg.production-search-haproxy-id}"
}

###################################################################################################

output "changelog-sg-elb-id" {
	value="${data.terraform_remote_state.sg.changelog-sg-elb-id}"
}

###################################################################################################

output "production-yaga-batch-id" {
	value="${data.terraform_remote_state.sg.production-yaga-batch-id}"
}

###################################################################################################

output "benchmark-activity-id" {
	value="${data.terraform_remote_state.sg.benchmark-activity-id}"
}

###################################################################################################

output "production-control-id" {
	value="${data.terraform_remote_state.sg.production-control-id}"
}

###################################################################################################

output "production-search-kaapi-id" {
	value="${data.terraform_remote_state.sg.production-search-kaapi-id}"
}

###################################################################################################

output "production-search-americano-id" {
	value="${data.terraform_remote_state.sg.production-search-americano-id}"
}

###################################################################################################

output "sc-qbol_acc7385_cl33225-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc7385_cl33225-id}"
}

###################################################################################################

output "skynet-credentials-id" {
	value="${data.terraform_remote_state.sg.skynet-credentials-id}"
}

###################################################################################################

output "secmonkey-elb-sg-id" {
	value="${data.terraform_remote_state.sg.secmonkey-elb-sg-id}"
}

###################################################################################################

output "production-s3-basin-id" {
	value="${data.terraform_remote_state.sg.production-s3-basin-id}"
}

###################################################################################################

output "prod-sg-secmonkey-id" {
	value="${data.terraform_remote_state.sg.prod-sg-secmonkey-id}"
}

###################################################################################################

output "production-rb-redis-id" {
	value="${data.terraform_remote_state.sg.production-rb-redis-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl31578-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl31578-id}"
}

###################################################################################################

output "test-elastic-id" {
	value="${data.terraform_remote_state.sg.test-elastic-id}"
}

###################################################################################################

output "ElasticMapReduce-master-id" {
	value="${data.terraform_remote_state.sg.ElasticMapReduce-master-id}"
}

###################################################################################################

output "production-cloudfront-http-id" {
	value="${data.terraform_remote_state.sg.production-cloudfront-http-id}"
}

###################################################################################################

output "Production-poshcrew-ALB-id" {
	value="${data.terraform_remote_state.sg.Production-poshcrew-ALB-id}"
}

###################################################################################################

output "ElasticMapReduce-slave-id" {
	value="${data.terraform_remote_state.sg.ElasticMapReduce-slave-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl41005-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl41005-id}"
}

###################################################################################################

output "production-qw-id" {
	value="${data.terraform_remote_state.sg.production-qw-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl33408-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl33408-id}"
}

###################################################################################################

output "poshfit-elb-sg-id" {
	value="${data.terraform_remote_state.sg.poshfit-elb-sg-id}"
}

###################################################################################################

output "production-yaga-consumer-id" {
	value="${data.terraform_remote_state.sg.production-yaga-consumer-id}"
}

###################################################################################################

output "production-queue-id" {
	value="${data.terraform_remote_state.sg.production-queue-id}"
}

###################################################################################################

output "production-maintenance-id" {
	value="${data.terraform_remote_state.sg.production-maintenance-id}"
}

###################################################################################################

output "production-rb-app-elb-id" {
	value="${data.terraform_remote_state.sg.production-rb-app-elb-id}"
}

###################################################################################################

output "spark-access-id" {
	value="${data.terraform_remote_state.sg.spark-access-id}"
}

###################################################################################################

output "skynet-ad-partner-id" {
	value="${data.terraform_remote_state.sg.skynet-ad-partner-id}"
}

###################################################################################################

output "production-changelog-id" {
	value="${data.terraform_remote_state.sg.production-changelog-id}"
}

###################################################################################################

output "production-yaga-app-id" {
	value="${data.terraform_remote_state.sg.production-yaga-app-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl29259-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl29259-id}"
}

###################################################################################################

output "production-search-espresso-id" {
	value="${data.terraform_remote_state.sg.production-search-espresso-id}"
}

###################################################################################################

output "sc-qbol_acc7385_cl31285-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc7385_cl31285-id}"
}

###################################################################################################

output "production-redis-haproxy-id" {
	value="${data.terraform_remote_state.sg.production-redis-haproxy-id}"
}

###################################################################################################

output "production-cloudfront-https-id" {
	value="${data.terraform_remote_state.sg.production-cloudfront-https-id}"
}

###################################################################################################

output "production-nat-id" {
	value="${data.terraform_remote_state.sg.production-nat-id}"
}

###################################################################################################

output "production-elastalert-slave-id" {
	value="${data.terraform_remote_state.sg.production-elastalert-slave-id}"
}

###################################################################################################

output "cerberus-temp-id" {
	value="${data.terraform_remote_state.sg.cerberus-temp-id}"
}

###################################################################################################

output "production-intacct-id" {
	value="${data.terraform_remote_state.sg.production-intacct-id}"
}

###################################################################################################

output "production-rb-app-id" {
	value="${data.terraform_remote_state.sg.production-rb-app-id}"
}

###################################################################################################

output "production-redis-cache-id" {
	value="${data.terraform_remote_state.sg.production-redis-cache-id}"
}

###################################################################################################

output "sc-qbol_acc7385_cl37237-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc7385_cl37237-id}"
}

###################################################################################################

output "sc-qbol_acc7385_cl40149-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc7385_cl40149-id}"
}

###################################################################################################

output "production-mmsagent-id" {
	value="${data.terraform_remote_state.sg.production-mmsagent-id}"
}

###################################################################################################

output "production-rb-bastion-id" {
	value="${data.terraform_remote_state.sg.production-rb-bastion-id}"
}

###################################################################################################

output "production-spark-id" {
	value="${data.terraform_remote_state.sg.production-spark-id}"
}

###################################################################################################

output "production-app-id" {
	value="${data.terraform_remote_state.sg.production-app-id}"
}

###################################################################################################

output "production-redis-userdata-id" {
	value="${data.terraform_remote_state.sg.production-redis-userdata-id}"
}

###################################################################################################

output "production-testing-mocha-id" {
	value="${data.terraform_remote_state.sg.production-testing-mocha-id}"
}

###################################################################################################

output "production-ato-id" {
	value="${data.terraform_remote_state.sg.production-ato-id}"
}

###################################################################################################

output "metis-collector-id" {
	value="${data.terraform_remote_state.sg.metis-collector-id}"
}

###################################################################################################

output "produciton-ut-app-vpc-id" {
	value="${data.terraform_remote_state.sg.produciton-ut-app-vpc-id}"
}

###################################################################################################

output "stormlight-id" {
	value="${data.terraform_remote_state.sg.stormlight-id}"
}

###################################################################################################

output "production-redshift-id" {
	value="${data.terraform_remote_state.sg.production-redshift-id}"
}

###################################################################################################

output "production-mocha-elb-id" {
	value="${data.terraform_remote_state.sg.production-mocha-elb-id}"
}

###################################################################################################

output "production-ipsec-id" {
	value="${data.terraform_remote_state.sg.production-ipsec-id}"
}

###################################################################################################

output "production-yaga-worker-id" {
	value="${data.terraform_remote_state.sg.production-yaga-worker-id}"
}

###################################################################################################

output "sc-qbol_acc4126_cl39298-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc4126_cl39298-id}"
}

###################################################################################################

output "production-search-mazagran-id" {
	value="${data.terraform_remote_state.sg.production-search-mazagran-id}"
}

###################################################################################################

output "production-mocha-haproxy-id" {
	value="${data.terraform_remote_state.sg.production-mocha-haproxy-id}"
}

###################################################################################################

output "prod-coeus-oauthproxy-id" {
	value="${data.terraform_remote_state.sg.prod-coeus-oauthproxy-id}"
}

###################################################################################################

output "sc-qbol_acc7385_cl40071-id" {
	value="${data.terraform_remote_state.sg.sc-qbol_acc7385_cl40071-id}"
}

###################################################################################################

output "cerberus-id" {
	value="${data.terraform_remote_state.sg.cerberus-id}"
}

###################################################################################################

/*output "default-id" {
	value="${data.terraform_remote_state.sg.default-id}"
}*/

###################################################################################################

output "cerberus-twemproxy-id" {
	value="${data.terraform_remote_state.sg.cerberus-twemproxy-id}"
}

###################################################################################################

output "production-db-reporting-id" {
	value="${data.terraform_remote_state.sg.production-db-reporting-id}"
}

###################################################################################################

output "skynet-slave-id" {
	value="${data.terraform_remote_state.sg.skynet-slave-id}"
}

###################################################################################################
