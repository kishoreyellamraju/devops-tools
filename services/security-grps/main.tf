provider "aws" {
  region     = "us-west-2"
}

 terraform {
	  backend "s3" {}
}

module "vpc" {
  source = "../../lib"
  env = "dev"
  app = "poshmark"
}

resource "aws_security_group" "production-search-latte" {
	name="production-search-latte"
	description="production-search-latte"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-latte"
	}
}


resource "aws_security_group_rule" "production-search-latte_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-latte_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-latte_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-latte_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-latte_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-latte_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-search-latte.id}"
}

resource "aws_security_group_rule" "production-search-latte_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-latte_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}


resource "aws_security_group_rule" "production-search-latte_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-latte.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-latte-id" {
	value="${aws_security_group.production-search-latte.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-vault-db" {
	name="production-vault-db"
	description="production-vault-"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-vault-db"
	}
}


resource "aws_security_group_rule" "production-vault-db_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-db.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-vault-db_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-db.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-vault-db_3" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-db.id}"
	source_security_group_id="${aws_security_group.production-vault-app.id}"
}

resource "aws_security_group_rule" "production-vault-db_4" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-db.id}"
	source_security_group_id="${aws_security_group.production-vault-db.id}"
}


resource "aws_security_group_rule" "production-vault-db_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-vault-db.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-vault-db-id" {
	value="${aws_security_group.production-vault-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "spark-qubole" {
	name="spark-qubole"
	description="spark-qubole"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Name="spark-qubole"
	}
}



resource "aws_security_group_rule" "spark-qubole_1" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.spark-qubole.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "spark-qubole-id" {
	value="${aws_security_group.spark-qubole.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sidekiq-redis-data" {
	name="sidekiq-redis-data"
	description="sidekiq-redis-data"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="sidekiq-redis-data"
	}
}


resource "aws_security_group_rule" "sidekiq-redis-data_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "sidekiq-redis-data_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "sidekiq-redis-data_3" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "sidekiq-redis-data_4" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "sidekiq-redis-data_5" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "sidekiq-redis-data_6" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "sidekiq-redis-data_7" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	source_security_group_id="${aws_security_group.sidekiq-redis-data.id}"
}


resource "aws_security_group_rule" "sidekiq-redis-data_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sidekiq-redis-data.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sidekiq-redis-data-id" {
	value="${aws_security_group.sidekiq-redis-data.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "skynet-master" {
	name="skynet-master"
	description="skynet-master"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="skynet-master"
	}
}


resource "aws_security_group_rule" "skynet-master_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-master.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "skynet-master_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-master.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "skynet-master_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-master.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "skynet-master_4" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-master.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "skynet-master_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.skynet-master.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "skynet-master-id" {
	value="${aws_security_group.skynet-master.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-reporting-gateway" {
	name="production-reporting-gateway"
	description="production-reporting-gateway"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-reporting-gateway"
	}
}


resource "aws_security_group_rule" "production-reporting-gateway_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-reporting-gateway.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-reporting-gateway_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-reporting-gateway.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-reporting-gateway_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-reporting-gateway.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-reporting-gateway-id" {
	value="${aws_security_group.production-reporting-gateway.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-replay-producer" {
	name="production-replay-producer"
	description="production-replay-producer"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-replay-producer_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-producer.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-replay-producer_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-producer.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-replay-producer_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-replay-producer.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-replay-producer-id" {
	value="${aws_security_group.production-replay-producer.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl35425" {
	name="sc-qbol_acc4126_cl35425"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl35425_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl35425_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl35425_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl35425_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl35425_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl35425-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl35425.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "poshfit-server" {
	name="poshfit-server"
	description="SG for poshfit server"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "poshfit-server_1" {
	type="ingress"
	from_port=8083
	to_port=8083
	protocol="tcp"
	security_group_id="${aws_security_group.poshfit-server.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "poshfit-server_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.poshfit-server.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "poshfit-server_3" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.poshfit-server.id}"
	source_security_group_id="${aws_security_group.poshfit-elb-sg.id}"
}


resource "aws_security_group_rule" "poshfit-server_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.poshfit-server.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "poshfit-server-id" {
	value="${aws_security_group.poshfit-server.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-yaga-app-elb" {
	name="production-yaga-app-elb"
	description="production-yaga-app-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-yaga-app-elb"
	}
}


resource "aws_security_group_rule" "production-yaga-app-elb_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-yaga-app-elb_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-yaga-app-elb_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-yaga-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-yaga-app-elb-id" {
	value="${aws_security_group.production-yaga-app-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-breve" {
	name="production-search-breve"
	description="production-search-breve"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-breve"
	}
}


resource "aws_security_group_rule" "production-search-breve_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-breve_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-breve_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-breve_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-breve_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-breve_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-search-breve.id}"
}

resource "aws_security_group_rule" "production-search-breve_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-breve_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-search-breve_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-breve.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-breve-id" {
	value="${aws_security_group.production-search-breve.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl30531" {
	name="sc-qbol_acc4126_cl30531"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Name="qbol_acc4126_cl30531"
		Qubole="qbol_acc4126_cl30531"
		Type="qubole"
		alias="qbol_acc4126_cl30531"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl30531_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl30531_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl30531_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl30531_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl30531_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl30531-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl30531.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "prod-credentials" {
	name="prod-credentials"
	description="prod-credentials"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "prod-credentials_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.prod-credentials.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "prod-credentials_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.prod-credentials.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "prod-credentials_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.prod-credentials.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "prod-credentials-id" {
	value="${aws_security_group.prod-credentials.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-vault-haproxy" {
	name="production-vault-haproxy"
	description="production-vault-haproxy"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-vault-haproxy"
	}
}


resource "aws_security_group_rule" "production-vault-haproxy_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_3" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_5" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-vault-haproxy_6" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-vault-haproxy-id" {
	value="${aws_security_group.production-vault-haproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "launch-wizard-1" {
	name="launch-wizard-1"
	description="launch-wizard-1 created 2017-09-13T14:13:13.486-07:00"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="app-testing-siege"
	}
}


resource "aws_security_group_rule" "launch-wizard-1_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.launch-wizard-1.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "launch-wizard-1_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.launch-wizard-1.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "launch-wizard-1-id" {
	value="${aws_security_group.launch-wizard-1.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-testing-db" {
	name="production-testing-db"
	description="production-testing-db"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-test-db"
	}
}


resource "aws_security_group_rule" "production-testing-db_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-db.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-testing-db_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-db.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-testing-db_3" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-db.id}"
	source_security_group_id="${aws_security_group.production-testing-db.id}"
}

resource "aws_security_group_rule" "production-testing-db_4" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-db.id}"
	source_security_group_id="${aws_security_group.production-test.id}"
}


resource "aws_security_group_rule" "production-testing-db_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-testing-db.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-testing-db-id" {
	value="${aws_security_group.production-testing-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-test" {
	name="production-test"
	description="production-test"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-test"
	}
}


resource "aws_security_group_rule" "production-test_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-test.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "production-test_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-test.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-test_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-test.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "production-test_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-test.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-test-id" {
	value="${aws_security_group.production-test.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl28187" {
	name="sc-qbol_acc4126_cl28187"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl28187_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl28187_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl28187_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl28187_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl28187_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl28187-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl28187.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-static-app" {
	name="production-static-app"
	description="production-static-app"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-static-app_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-static-app.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-static-app_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-static-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-static-app_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-static-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-static-app_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-static-app.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-static-app_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-static-app.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-static-app-id" {
	value="${aws_security_group.production-static-app.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-redis-data" {
	name="production-redis-data"
	description="production-redis-data"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-redis-data"
	}
}


resource "aws_security_group_rule" "production-redis-data_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-data_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-data_3" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-redis-data_4" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-redis-data.id}"
}

resource "aws_security_group_rule" "production-redis-data_5" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-data_6" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-data_7" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-data.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}


resource "aws_security_group_rule" "production-redis-data_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-redis-data.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-redis-data-id" {
	value="${aws_security_group.production-redis-data.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-jenkins" {
	name="production-jenkins"
	description="production-jenkins"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-jenkins"
	}
}


resource "aws_security_group_rule" "production-jenkins_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-jenkins.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "production-jenkins_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-jenkins.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-jenkins_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-jenkins.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-jenkins_4" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-jenkins.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-jenkins_5" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-jenkins.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-jenkins_6" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-jenkins.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-jenkins-id" {
	value="${aws_security_group.production-jenkins.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-logs-queue" {
	name="production-logs-queue"
	description="production-logs-queue"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-logs-queue"
	}
}


resource "aws_security_group_rule" "production-logs-queue_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-logs-queue_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-logs-queue_3" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-logs-queue_4" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-db.id}"
}

resource "aws_security_group_rule" "production-logs-queue_5" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-control.id}"
}

resource "aws_security_group_rule" "production-logs-queue_6" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-logs-queue_7" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-logs-queue_8" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-yaga-consumer.id}"
}

resource "aws_security_group_rule" "production-logs-queue_9" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-logs-queue_10" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-yaga-app.id}"
}

resource "aws_security_group_rule" "production-logs-queue_11" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-yaga-batch.id}"
}

resource "aws_security_group_rule" "production-logs-queue_12" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-kibana-consumer.id}"
}

resource "aws_security_group_rule" "production-logs-queue_13" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-logs-queue_14" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}


resource "aws_security_group_rule" "production-logs-queue_15" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-logs-queue.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-logs-queue-id" {
	value="${aws_security_group.production-logs-queue.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl10431" {
	name="sc-qbol_acc4126_cl10431"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl10431_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl10431_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl10431_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl10431_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl10431_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl10431-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl10431.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "vpc-testing" {
	name="vpc-testing"
	description="vpc-testing"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "vpc-testing_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.vpc-testing.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "vpc-testing_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.vpc-testing.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "vpc-testing_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.vpc-testing.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "vpc-testing-id" {
	value="${aws_security_group.vpc-testing.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-cortado" {
	name="production-search-cortado"
	description="production-search-cortado"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-cortado"
	}
}


resource "aws_security_group_rule" "production-search-cortado_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-cortado.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-cortado_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-cortado.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-cortado_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-cortado.id}"
	source_security_group_id="${aws_security_group.production-search-cortado.id}"
}

resource "aws_security_group_rule" "production-search-cortado_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-cortado.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}


resource "aws_security_group_rule" "production-search-cortado_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-cortado.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-cortado-id" {
	value="${aws_security_group.production-search-cortado.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-access" {
	name="production-access"
	description="production-access"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-access"
	}
}


resource "aws_security_group_rule" "production-access_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-access.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-access_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-access.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-access-id" {
	value="${aws_security_group.production-access.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc7385_cl40070" {
	name="sc-qbol_acc7385_cl40070"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Name="qbol_acc7385_cl40070"
		alias="qbol_acc7385_cl40070"
		Qubole="qbol_acc7385_cl40070"
		Type="qubole"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl40070_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40070_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40070_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40070_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl40070_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc7385_cl40070-id" {
	value="${aws_security_group.sc-qbol_acc7385_cl40070.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl40112" {
	name="sc-qbol_acc4126_cl40112"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		alias="qbol_acc4126_cl40112"
		Type="qubole"
		Qubole="qbol_acc4126_cl40112"
		Name="qbol_acc4126_cl40112"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl40112_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl40112_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl40112_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl40112_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl40112_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl40112-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl40112.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-warm" {
	name="production-warm"
	description="production-warm"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-warm"
	}
}


resource "aws_security_group_rule" "production-warm_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-warm.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-warm_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-warm.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-warm_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-warm.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-warm-id" {
	value="${aws_security_group.production-warm.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-vault-app" {
	name="production-vault-app"
	description="production-vault-app"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-vault-app"
	}
}


resource "aws_security_group_rule" "production-vault-app_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-vault-app_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-app.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-vault-app_3" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-app.id}"
	source_security_group_id="${aws_security_group.production-vault-haproxy.id}"
}


resource "aws_security_group_rule" "production-vault-app_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-vault-app.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-vault-app-id" {
	value="${aws_security_group.production-vault-app.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-replay-consumer" {
	name="production-replay-consumer"
	description="production-replay-consumer"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-replay-consumer_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-consumer.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-replay-consumer_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-consumer.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-replay-consumer_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-replay-consumer.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-replay-consumer-id" {
	value="${aws_security_group.production-replay-consumer.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-db" {
	name="production-db"
	description="production-db"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-db"
	}
}


resource "aws_security_group_rule" "production-db_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-db_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-db_3" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-db_4" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-db_5" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-db_6" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-db_7" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-db.id}"
}

resource "aws_security_group_rule" "production-db_8" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-mongos.id}"
}

resource "aws_security_group_rule" "production-db_9" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-configsvr.id}"
}

resource "aws_security_group_rule" "production-db_10" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-control.id}"
}

resource "aws_security_group_rule" "production-db_11" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-db_12" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-db_13" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-db.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-db-id" {
	value="${aws_security_group.production-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl21611" {
	name="sc-qbol_acc4126_cl21611"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl21611_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl21611_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl21611_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl21611_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl21611_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl21611-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl21611.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-gateway" {
	name="production-gateway"
	description="production-gateway"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-gateway"
	}
}


resource "aws_security_group_rule" "production-gateway_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-gateway.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-gateway_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-gateway.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-gateway_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-gateway.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-gateway-id" {
	value="${aws_security_group.production-gateway.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################


###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl35356" {
	name="sc-qbol_acc4126_cl35356"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl35356_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl35356_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl35356_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl35356_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl35356_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl35356-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl35356.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-ironbank" {
	name="production-search-ironbank"
	description="production-search-ironbank"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-ironbank"
	}
}


resource "aws_security_group_rule" "production-search-ironbank_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-search-ironbank.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}


resource "aws_security_group_rule" "production-search-ironbank_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-ironbank-id" {
	value="${aws_security_group.production-search-ironbank.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-kibana-consumer" {
	name="production-kibana-consumer"
	description="production-kibana-consumer"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-kibana-consumer"
	}
}


resource "aws_security_group_rule" "production-kibana-consumer_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-kibana-consumer.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-kibana-consumer_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-kibana-consumer.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-kibana-consumer_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-kibana-consumer.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-kibana-consumer-id" {
	value="${aws_security_group.production-kibana-consumer.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-configsvr" {
	name="production-configsvr"
	description="production-configsvr"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-configsvr"
	}
}


resource "aws_security_group_rule" "production-configsvr_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-configsvr_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-configsvr_3" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-configsvr_4" {
	type="ingress"
	from_port=27019
	to_port=27021
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-configsvr_5" {
	type="ingress"
	from_port=27019
	to_port=27021
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-db.id}"
}

resource "aws_security_group_rule" "production-configsvr_6" {
	type="ingress"
	from_port=27019
	to_port=27021
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-configsvr_7" {
	type="ingress"
	from_port=27019
	to_port=27021
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-mongos.id}"
}

resource "aws_security_group_rule" "production-configsvr_8" {
	type="ingress"
	from_port=27019
	to_port=27021
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-configsvr_9" {
	type="ingress"
	from_port=27019
	to_port=27021
	protocol="tcp"
	security_group_id="${aws_security_group.production-configsvr.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}


resource "aws_security_group_rule" "production-configsvr_10" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-configsvr.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-configsvr-id" {
	value="${aws_security_group.production-configsvr.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-mongos" {
	name="production-mongos"
	description="production-mongos"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-mongos"
	}
}


resource "aws_security_group_rule" "production-mongos_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-mongos_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-mongos_3" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-mongos_4" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-mongos_5" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-mongos_6" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-db.id}"
}

resource "aws_security_group_rule" "production-mongos_7" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-mongos_8" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-mongos.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}


resource "aws_security_group_rule" "production-mongos_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-mongos.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-mongos-id" {
	value="${aws_security_group.production-mongos.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-twemproxy" {
	name="production-twemproxy"
	description="production-twemproxy"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-twemproxy"
	}
}


resource "aws_security_group_rule" "production-twemproxy_1" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_2" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-twemproxy_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-twemproxy_5" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_6" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_7" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_8" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}


resource "aws_security_group_rule" "production-twemproxy_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-twemproxy-id" {
	value="${aws_security_group.production-twemproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-lambda" {
	name="production-lambda"
	description="production-lambda"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}



resource "aws_security_group_rule" "production-lambda_1" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-lambda.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-lambda-id" {
	value="${aws_security_group.production-lambda.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl39867" {
	name="sc-qbol_acc4126_cl39867"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Type="qubole"
		Name="qbol_acc4126_cl39867"
		alias="qbol_acc4126_cl39867"
		Qubole="qbol_acc4126_cl39867"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl39867_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39867_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39867_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39867_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl39867_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl39867-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl39867.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-replay-queue" {
	name="production-replay-queue"
	description="production-replay-queue"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-replay-queue_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-queue.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-replay-queue_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-queue.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-replay-queue_3" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-queue.id}"
	source_security_group_id="${aws_security_group.production-replay-consumer.id}"
}

resource "aws_security_group_rule" "production-replay-queue_4" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-replay-queue.id}"
	source_security_group_id="${aws_security_group.production-replay-producer.id}"
}


resource "aws_security_group_rule" "production-replay-queue_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-replay-queue.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-replay-queue-id" {
	value="${aws_security_group.production-replay-queue.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-app-elb" {
	name="production-app-elb"
	description="production-app-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-app-elb"
	}
}


resource "aws_security_group_rule" "production-app-elb_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "production-app-elb_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-app-elb_3" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-app-elb_4" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-app-elb_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-app-elb-id" {
	value="${aws_security_group.production-app-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-mocha" {
	name="production-search-mocha"
	description="production-search-mocha"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-mocha"
	}
}


resource "aws_security_group_rule" "production-search-mocha_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mocha_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mocha_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mocha_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-search-mocha.id}"
}

resource "aws_security_group_rule" "production-search-mocha_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-mocha_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-anthracite.id}"
}

resource "aws_security_group_rule" "production-search-mocha_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-testing-mocha.id}"
}

resource "aws_security_group_rule" "production-search-mocha_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mocha_9" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${aws_security_group.production-ato.id}"
}


resource "aws_security_group_rule" "production-search-mocha_10" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-mocha-id" {
	value="${aws_security_group.production-search-mocha.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-romano" {
	name="production-search-romano"
	description="production-search-romano"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-romano"
	}
}


resource "aws_security_group_rule" "production-search-romano_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-romano_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-romano_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-romano_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-romano_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-romano_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-search-romano.id}"
}

resource "aws_security_group_rule" "production-search-romano_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-search-romano_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-romano.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-romano-id" {
	value="${aws_security_group.production-search-romano.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-skynet-app-elb" {
	name="production-skynet-app-elb"
	description="production-skynet-app-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-skynet-app-elb"
	}
}


resource "aws_security_group_rule" "production-skynet-app-elb_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-skynet-app-elb.id}"
	source_security_group_id="${aws_security_group.skynet-slave.id}"
}

resource "aws_security_group_rule" "production-skynet-app-elb_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-skynet-app-elb.id}"
	source_security_group_id="${aws_security_group.skynet-master.id}"
}

resource "aws_security_group_rule" "production-skynet-app-elb_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-skynet-app-elb.id}"
	source_security_group_id="${aws_security_group.skynet-master.id}"
}

resource "aws_security_group_rule" "production-skynet-app-elb_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-skynet-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-skynet-app-elb_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-skynet-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-skynet-app-elb-id" {
	value="${aws_security_group.production-skynet-app-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "coeus-alb-sg" {
	name="coeus-alb-sg"
	description="coeus-alb-sg created on 2017-11-06T06:36:35.936+05:30"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "coeus-alb-sg_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.coeus-alb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "coeus-alb-sg_2" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.coeus-alb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "coeus-alb-sg_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.coeus-alb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "coeus-alb-sg-id" {
	value="${aws_security_group.coeus-alb-sg.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl37583" {
	name="sc-qbol_acc4126_cl37583"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Name="qbol_acc4126_cl37583"
		alias="qbol_acc4126_cl37583"
		Type="qubole"
		Qubole="qbol_acc4126_cl37583"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl37583_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl37583_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl37583_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl37583_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl37583_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl37583-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl37583.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-anthracite" {
	name="production-anthracite"
	description="production-anthracite"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-anthracite_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-anthracite.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-anthracite_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-anthracite.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-anthracite_3" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.production-anthracite.id}"
	source_security_group_id="${aws_security_group.changelog-sg-elb.id}"
}

resource "aws_security_group_rule" "production-anthracite_4" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.production-anthracite.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-anthracite_5" {
	type="ingress"
	from_port=8081
	to_port=8081
	protocol="tcp"
	security_group_id="${aws_security_group.production-anthracite.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-anthracite_6" {
	type="ingress"
	from_port=8081
	to_port=8081
	protocol="tcp"
	security_group_id="${aws_security_group.production-anthracite.id}"
	source_security_group_id="${aws_security_group.changelog-sg-elb.id}"
}


resource "aws_security_group_rule" "production-anthracite_7" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-anthracite.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-anthracite-id" {
	value="${aws_security_group.production-anthracite.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-batch" {
	name="production-batch"
	description="production-batch"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-batch"
	}
}


resource "aws_security_group_rule" "production-batch_1" {
	type="ingress"
	from_port=27019
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-batch.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-batch_2" {
	type="ingress"
	from_port=27018
	to_port=27018
	protocol="tcp"
	security_group_id="${aws_security_group.production-batch.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-batch_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-batch.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-batch_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-batch.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-batch_5" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-batch.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-batch_6" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-batch.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}


resource "aws_security_group_rule" "production-batch_7" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-batch.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-batch-id" {
	value="${aws_security_group.production-batch.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-haproxy-elb" {
	name="production-search-haproxy-elb"
	description="production-search-haproxy-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-haproxy-elb"
	}
}


resource "aws_security_group_rule" "production-search-haproxy-elb_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-haproxy-elb_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-haproxy-elb_3" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-search-haproxy-elb_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-search-haproxy-elb_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}


resource "aws_security_group_rule" "production-search-haproxy-elb_6" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-haproxy-elb-id" {
	value="${aws_security_group.production-search-haproxy-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-ipsec-monitoring" {
	name="production-ipsec-monitoring"
	description="production-ipsec-monitoring"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-ipsec-monitoring"
	}
}


resource "aws_security_group_rule" "production-ipsec-monitoring_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec-monitoring.id}"
	source_security_group_id="${aws_security_group.production-ipsec.id}"
}

resource "aws_security_group_rule" "production-ipsec-monitoring_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec-monitoring.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-ipsec-monitoring_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec-monitoring.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-ipsec-monitoring_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec-monitoring.id}"
	source_security_group_id="${aws_security_group.production-ipsec.id}"
}


resource "aws_security_group_rule" "production-ipsec-monitoring_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="all"
	security_group_id="${aws_security_group.production-ipsec-monitoring.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-ipsec-monitoring-id" {
	value="${aws_security_group.production-ipsec-monitoring.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-doppio" {
	name="production-search-doppio"
	description="production-search-doppio"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-doppio"
	}
}


resource "aws_security_group_rule" "production-search-doppio_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-doppio_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-doppio_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-doppio_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-doppio_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-doppio_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-search-doppio.id}"
}

resource "aws_security_group_rule" "production-search-doppio_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-doppio_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}


resource "aws_security_group_rule" "production-search-doppio_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-doppio-id" {
	value="${aws_security_group.production-search-doppio.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-yaga-db" {
	name="production-yaga-db"
	description="production-yaga-db"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-yaga-db"
	}
}


resource "aws_security_group_rule" "production-yaga-db_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-yaga-db_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-yaga-db_3" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-yaga-db_4" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-yaga-db.id}"
}

resource "aws_security_group_rule" "production-yaga-db_5" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-yaga-db_6" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-yaga-db_7" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-yaga-db_8" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-yaga-app.id}"
}

resource "aws_security_group_rule" "production-yaga-db_9" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-yaga-batch.id}"
}

resource "aws_security_group_rule" "production-yaga-db_10" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-yaga-consumer.id}"
}

resource "aws_security_group_rule" "production-yaga-db_11" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-yaga-worker.id}"
}

resource "aws_security_group_rule" "production-yaga-db_12" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-yaga-db_13" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.skynet-slave.id}"
}

resource "aws_security_group_rule" "production-yaga-db_14" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-yaga-db_15" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	source_security_group_id="${aws_security_group.production-replay-consumer.id}"
}


resource "aws_security_group_rule" "production-yaga-db_16" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-yaga-db.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-yaga-db-id" {
	value="${aws_security_group.production-yaga-db.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-redis-haproxy-elb" {
	name="production-redis-haproxy-elb"
	description="production-redis-haproxy-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-redis-haproxy-elb"
	}
}


resource "aws_security_group_rule" "production-redis-haproxy-elb_1" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_2" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_3" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_4" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_5" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_6" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_7" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_8" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_9" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_10" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_11" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_12" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_13" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_14" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_15" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_16" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_17" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_18" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_19" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_20" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_21" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_22" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_23" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_24" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_25" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_26" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_27" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_28" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_29" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_30" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_31" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_32" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_33" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_34" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_35" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_36" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy-elb_37" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}


resource "aws_security_group_rule" "production-redis-haproxy-elb_38" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-redis-haproxy-elb-id" {
	value="${aws_security_group.production-redis-haproxy-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-cloudfront-app-elb" {
	name="production-cloudfront-app-elb"
	description="production-cloudfront-app-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-cloudfront-app-elb"
	}
}


resource "aws_security_group_rule" "production-cloudfront-app-elb_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-cloudfront-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-cloudfront-app-elb_2" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-cloudfront-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-cloudfront-app-elb_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-cloudfront-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-cloudfront-app-elb-id" {
	value="${aws_security_group.production-cloudfront-app-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-squid" {
	name="production-squid"
	description="production-squid"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-squid"
	}
}


resource "aws_security_group_rule" "production-squid_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-squid.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-squid_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-squid.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-squid_3" {
	type="ingress"
	from_port=3128
	to_port=3128
	protocol="tcp"
	security_group_id="${aws_security_group.production-squid.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-squid_4" {
	type="ingress"
	from_port=3128
	to_port=3128
	protocol="tcp"
	security_group_id="${aws_security_group.production-squid.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-squid_5" {
	type="ingress"
	from_port=3128
	to_port=3128
	protocol="tcp"
	security_group_id="${aws_security_group.production-squid.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}


resource "aws_security_group_rule" "production-squid_6" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-squid.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-squid-id" {
	value="${aws_security_group.production-squid.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-haproxy" {
	name="production-search-haproxy"
	description="production-search-haproxy"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-haproxy"
	}
}


resource "aws_security_group_rule" "production-search-haproxy_1" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy-elb.id}"
}


resource "aws_security_group_rule" "production-search-haproxy_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-haproxy-id" {
	value="${aws_security_group.production-search-haproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "changelog-sg-elb" {
	name="changelog-sg-elb"
	description="sg for changelog elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "changelog-sg-elb_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.changelog-sg-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "changelog-sg-elb_2" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.changelog-sg-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "changelog-sg-elb_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.changelog-sg-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "changelog-sg-elb-id" {
	value="${aws_security_group.changelog-sg-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-yaga-batch" {
	name="production-yaga-batch"
	description="production-yaga-batch"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-yaga-batch"
	}
}


resource "aws_security_group_rule" "production-yaga-batch_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-batch.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-yaga-batch_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-batch.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-yaga-batch_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-yaga-batch.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-yaga-batch-id" {
	value="${aws_security_group.production-yaga-batch.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "benchmark-activity" {
	name="benchmark-activity"
	description="benchmark-activity"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "benchmark-activity_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.benchmark-activity.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "benchmark-activity_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.benchmark-activity.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "benchmark-activity-id" {
	value="${aws_security_group.benchmark-activity.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-control" {
	name="production-control"
	description="production-control"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-control"
	}
}


resource "aws_security_group_rule" "production-control_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-control.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-control_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-control.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-control-id" {
	value="${aws_security_group.production-control.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-kaapi" {
	name="production-search-kaapi"
	description="production-search-kaapi"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-kaapi"
	}
}


resource "aws_security_group_rule" "production-search-kaapi_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-search-kaapi.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}


resource "aws_security_group_rule" "production-search-kaapi_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-kaapi-id" {
	value="${aws_security_group.production-search-kaapi.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-americano" {
	name="production-search-americano"
	description="production-search-americano"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-americano"
	}
}


resource "aws_security_group_rule" "production-search-americano_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-americano_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-americano_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-search-americano.id}"
}

resource "aws_security_group_rule" "production-search-americano_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-americano_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-americano_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-americano_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-search-americano_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-americano.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-americano-id" {
	value="${aws_security_group.production-search-americano.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl25904" {
	name="sc-qbol_acc4126_cl25904"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Type="qubole"
		alias="qbol_acc4126_cl25904"
		Qubole="qbol_acc4126_cl25904"
		Name="qbol_acc4126_cl25904"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl25904_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl25904_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl25904_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl25904_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl25904_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl25904-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl25904.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc7385_cl33225" {
	name="sc-qbol_acc7385_cl33225"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl33225_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl33225_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl33225_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl33225_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl33225_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc7385_cl33225-id" {
	value="${aws_security_group.sc-qbol_acc7385_cl33225.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "skynet-credentials" {
	name="skynet-credentials"
	description="skynet-credentials"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="skynet-credentials"
	}
}


resource "aws_security_group_rule" "skynet-credentials_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-credentials.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "skynet-credentials_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-credentials.id}"
	source_security_group_id="${aws_security_group.skynet-master.id}"
}

resource "aws_security_group_rule" "skynet-credentials_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-credentials.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "skynet-credentials_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.skynet-credentials.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "skynet-credentials-id" {
	value="${aws_security_group.skynet-credentials.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "secmonkey-elb-sg" {
	name="secmonkey-elb-sg"
	description="sg for sec monkey elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "secmonkey-elb-sg_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.secmonkey-elb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "secmonkey-elb-sg_2" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.secmonkey-elb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "secmonkey-elb-sg_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.secmonkey-elb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "secmonkey-elb-sg-id" {
	value="${aws_security_group.secmonkey-elb-sg.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-s3-basin" {
	name="production-s3-basin"
	description="production-s3-basin"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-s3-basin_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-s3-basin.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-s3-basin_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-s3-basin.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-s3-basin_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-s3-basin.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-s3-basin-id" {
	value="${aws_security_group.production-s3-basin.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "prod-sg-secmonkey" {
	name="prod-sg-secmonkey"
	description="sg for security monkey"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "prod-sg-secmonkey_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.prod-sg-secmonkey.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "prod-sg-secmonkey_2" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.prod-sg-secmonkey.id}"
	source_security_group_id="${aws_security_group.secmonkey-elb-sg.id}"
}

resource "aws_security_group_rule" "prod-sg-secmonkey_3" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.prod-sg-secmonkey.id}"
	source_security_group_id="${aws_security_group.changelog-sg-elb.id}"
}

resource "aws_security_group_rule" "prod-sg-secmonkey_4" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.prod-sg-secmonkey.id}"
	source_security_group_id="${aws_security_group.secmonkey-elb-sg.id}"
}


resource "aws_security_group_rule" "prod-sg-secmonkey_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.prod-sg-secmonkey.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "prod-sg-secmonkey-id" {
	value="${aws_security_group.prod-sg-secmonkey.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-rb-redis" {
	name="production-rb-redis"
	description="production-rb-redis"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-rb-redis"
	}
}


resource "aws_security_group_rule" "production-rb-redis_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-redis.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-rb-redis_2" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-redis.id}"
	source_security_group_id="${aws_security_group.production-rb-app.id}"
}


resource "aws_security_group_rule" "production-rb-redis_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-rb-redis.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-rb-redis-id" {
	value="${aws_security_group.production-rb-redis.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl31578" {
	name="sc-qbol_acc4126_cl31578"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Type="qubole"
		alias="qbol_acc4126_cl31578"
		Qubole="qbol_acc4126_cl31578"
		Name="qbol_acc4126_cl31578"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl31578_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl31578_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl31578_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl31578_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl31578_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl31578-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl31578.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "test-elastic" {
	name="test-elastic"
	description="test-elastic"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "test-elastic_1" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.test-elastic.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "test-elastic_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.test-elastic.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "test-elastic-id" {
	value="${aws_security_group.test-elastic.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "ElasticMapReduce-master" {
	name="ElasticMapReduce-master"
	description="Master group for Elastic MapReduce created on 2016-06-30T08:46:49.525Z"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "ElasticMapReduce-master_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.prod-coeus-oauthproxy.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_2" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_3" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_4" {
	type="ingress"
	from_port=8890
	to_port=8890
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.prod-coeus-oauthproxy.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_5" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.spark-access.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_6" {
	type="ingress"
	from_port=8443
	to_port=8443
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	cidr_blocks=["204.246.162.32/28","54.240.198.0/24","204.246.160.32/28"]
}

resource "aws_security_group_rule" "ElasticMapReduce-master_7" {
	type="ingress"
	from_port=10014
	to_port=10014
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.spark-access.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_8" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_9" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_10" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-master_11" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
}


resource "aws_security_group_rule" "ElasticMapReduce-master_12" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "ElasticMapReduce-master-id" {
	value="${aws_security_group.ElasticMapReduce-master.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-cloudfront-http" {
	name="production-cloudfront-http"
	description="production-cloudfront-http"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		AutoUpdate="true"
		Name="production-cloudfront-http"
		Protocol="http"
	}
}


resource "aws_security_group_rule" "production-cloudfront-http_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-cloudfront-http.id}"
	cidr_blocks=["13.32.0.0/15","13.54.63.128/26","34.195.252.0/24","35.162.63.192/26","35.167.191.128/26","52.15.127.128/26","52.46.0.0/18","52.52.191.128/26","52.56.127.0/25","52.57.254.0/24","52.66.194.128/26","52.78.247.128/26","52.84.0.0/15","52.199.127.192/26","52.212.248.0/26","52.220.191.0/26","52.222.128.0/17","54.182.0.0/16","54.192.0.0/16","54.230.0.0/16","54.233.255.128/26","54.239.128.0/18","54.239.192.0/19","54.240.128.0/18","204.246.164.0/22","204.246.168.0/22","204.246.174.0/23","204.246.176.0/20","205.251.192.0/19","205.251.249.0/24","205.251.250.0/23","205.251.252.0/23","205.251.254.0/24","216.137.32.0/19","13.59.250.0/26"]
}


resource "aws_security_group_rule" "production-cloudfront-http_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-cloudfront-http.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-cloudfront-http-id" {
	value="${aws_security_group.production-cloudfront-http.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "Production-poshcrew-ALB" {
	name="Production-poshcrew-ALB"
	description="SG for ALB to handle traffic for all poshcrew domains"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="Production-poshcrew-ALB"
	}
}


resource "aws_security_group_rule" "Production-poshcrew-ALB_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_2" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "Production-poshcrew-ALB_3" {
	type="egress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_4" {
	type="egress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_5" {
	type="egress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	source_security_group_id="${aws_security_group.production-yaga-app.id}"
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_6" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_7" {
	type="egress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_8" {
	type="egress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	source_security_group_id="${aws_security_group.production-yaga-app.id}"
}

resource "aws_security_group_rule" "Production-poshcrew-ALB_9" {
	type="egress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
	source_security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
}
output "Production-poshcrew-ALB-id" {
	value="${aws_security_group.Production-poshcrew-ALB.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "ElasticMapReduce-slave" {
	name="ElasticMapReduce-slave"
	description="Slave group for Elastic MapReduce created on 2016-06-30T08:46:49.525Z"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "ElasticMapReduce-slave_1" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-slave_2" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-slave_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.spark-access.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-slave_4" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-slave_5" {
	type="ingress"
	from_port=0
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-slave_6" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
}

resource "aws_security_group_rule" "ElasticMapReduce-slave_7" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	source_security_group_id="${aws_security_group.ElasticMapReduce-master.id}"
}


resource "aws_security_group_rule" "ElasticMapReduce-slave_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.ElasticMapReduce-slave.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "ElasticMapReduce-slave-id" {
	value="${aws_security_group.ElasticMapReduce-slave.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl41005" {
	name="sc-qbol_acc4126_cl41005"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Type="qubole"
		Qubole="qbol_acc4126_cl41005"
		alias="qbol_acc4126_cl41005"
		Name="qbol_acc4126_cl41005"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl41005_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl41005_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl41005_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl41005_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl41005_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl41005-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl41005.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-qw" {
	name="production-qw"
	description="production-qw"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-qw"
	}
}


resource "aws_security_group_rule" "production-qw_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-qw.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-qw_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-qw.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-qw_3" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-qw.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}


resource "aws_security_group_rule" "production-qw_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-qw.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-qw-id" {
	value="${aws_security_group.production-qw.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl33408" {
	name="sc-qbol_acc4126_cl33408"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl33408_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl33408_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl33408_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl33408_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl33408_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl33408-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl33408.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "poshfit-elb-sg" {
	name="poshfit-elb-sg"
	description="poshfit"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "poshfit-elb-sg_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.poshfit-elb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "poshfit-elb-sg_2" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.poshfit-elb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "poshfit-elb-sg_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.poshfit-elb-sg.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "poshfit-elb-sg-id" {
	value="${aws_security_group.poshfit-elb-sg.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-yaga-consumer" {
	name="production-yaga-consumer"
	description="production-yaga-consumer"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-yaga-consumer"
	}
}


resource "aws_security_group_rule" "production-yaga-consumer_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-consumer.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-yaga-consumer_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-consumer.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-yaga-consumer_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-yaga-consumer.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-yaga-consumer-id" {
	value="${aws_security_group.production-yaga-consumer.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-queue" {
	name="production-queue"
	description="production-queue"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-queue"
	}
}


resource "aws_security_group_rule" "production-queue_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-queue.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-queue_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-queue.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-queue_3" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-queue.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-queue_4" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-queue.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-queue_5" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-queue.id}"
	source_security_group_id="${aws_security_group.production-queue.id}"
}

resource "aws_security_group_rule" "production-queue_6" {
	type="ingress"
	from_port=5672
	to_port=5672
	protocol="tcp"
	security_group_id="${aws_security_group.production-queue.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}


resource "aws_security_group_rule" "production-queue_7" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-queue.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-queue-id" {
	value="${aws_security_group.production-queue.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-maintenance" {
	name="production-maintenance"
	description="production-maintenance"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-maintenance_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-maintenance.id}"
	source_security_group_id="${aws_security_group.production-cloudfront-app-elb.id}"
}

resource "aws_security_group_rule" "production-maintenance_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-maintenance.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-maintenance_3" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-maintenance.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-maintenance_4" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-maintenance.id}"
	source_security_group_id="${aws_security_group.production-cloudfront-app-elb.id}"
}

resource "aws_security_group_rule" "production-maintenance_5" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-maintenance.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-maintenance_6" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-maintenance.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "production-maintenance_7" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-maintenance.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-maintenance-id" {
	value="${aws_security_group.production-maintenance.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-rb-app-elb" {
	name="production-rb-app-elb"
	description="production-rb-app-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-rb-app-elb"
	}
}


resource "aws_security_group_rule" "production-rb-app-elb_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "production-rb-app-elb_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-rb-app-elb_3" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-rb-app-elb_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-rb-app-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-rb-app-elb-id" {
	value="${aws_security_group.production-rb-app-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "spark-access" {
	name="spark-access"
	description="spark-access"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Name="spark-access"
	}
}


resource "aws_security_group_rule" "spark-access_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.spark-access.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "spark-access_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.spark-access.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "spark-access-id" {
	value="${aws_security_group.spark-access.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "skynet-ad-partner" {
	name="skynet-ad-partner"
	description="skynet-ad-partner"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "skynet-ad-partner_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-ad-partner.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "skynet-ad-partner_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.skynet-ad-partner.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "skynet-ad-partner-id" {
	value="${aws_security_group.skynet-ad-partner.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-changelog" {
	name="production-changelog"
	description="production-changelog"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-changelog_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-changelog.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "production-changelog_2" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-changelog.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-changelog_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-changelog.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-changelog-id" {
	value="${aws_security_group.production-changelog.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-yaga-app" {
	name="production-yaga-app"
	description="production-yaga-app"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-yaga-app"
	}
}


resource "aws_security_group_rule" "production-yaga-app_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-yaga-app_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "production-yaga-app_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-yaga-app_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-yaga-app_5" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.skynet-master.id}"
}

resource "aws_security_group_rule" "production-yaga-app_6" {
	type="ingress"
	from_port=3200
	to_port=3200
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-yaga-app_7" {
	type="ingress"
	from_port=3200
	to_port=3200
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-yaga-app_8" {
	type="ingress"
	from_port=3200
	to_port=3200
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-yaga-app_9" {
	type="ingress"
	from_port=3000
	to_port=3000
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-yaga-worker.id}"
}

resource "aws_security_group_rule" "production-yaga-app_10" {
	type="ingress"
	from_port=3000
	to_port=3000
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-yaga-app_11" {
	type="ingress"
	from_port=3000
	to_port=3000
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-yaga-app-elb.id}"
}

resource "aws_security_group_rule" "production-yaga-app_12" {
	type="ingress"
	from_port=3000
	to_port=3000
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-skynet-app-elb.id}"
}

resource "aws_security_group_rule" "production-yaga-app_13" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-yaga-app_14" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-yaga-app_15" {
	type="ingress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}


resource "aws_security_group_rule" "production-yaga-app_16" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-yaga-app.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-yaga-app-id" {
	value="${aws_security_group.production-yaga-app.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl29259" {
	name="sc-qbol_acc4126_cl29259"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl29259_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl29259_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl29259_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl29259_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl29259_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl29259-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl29259.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-espresso" {
	name="production-search-espresso"
	description="production-search-espresso"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-espresso"
	}
}


resource "aws_security_group_rule" "production-search-espresso_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-espresso_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-espresso_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-espresso_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-espresso_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-search-espresso.id}"
}

resource "aws_security_group_rule" "production-search-espresso_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-espresso_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-espresso_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-search-espresso_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-espresso-id" {
	value="${aws_security_group.production-search-espresso.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc7385_cl31285" {
	name="sc-qbol_acc7385_cl31285"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl31285_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl31285_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl31285_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl31285_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl31285_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc7385_cl31285-id" {
	value="${aws_security_group.sc-qbol_acc7385_cl31285.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-redis-haproxy" {
	name="production-redis-haproxy"
	description="production-redis-haproxy"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-redis-haproxy"
	}
}


resource "aws_security_group_rule" "production-redis-haproxy_1" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_2" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_3" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_4" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_5" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_6" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_7" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_8" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_9" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_10" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_11" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_12" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_13" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_14" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_15" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_16" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_17" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_18" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_19" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_20" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_21" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_22" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_23" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_24" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_25" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_26" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_27" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_28" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_29" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_30" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_31" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_32" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_33" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_34" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_35" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_36" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_37" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_38" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_39" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_40" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_41" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_42" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_43" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_44" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_45" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_46" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_47" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_48" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy-elb.id}"
}


resource "aws_security_group_rule" "production-redis-haproxy_49" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-redis-haproxy-id" {
	value="${aws_security_group.production-redis-haproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-cloudfront-https" {
	name="production-cloudfront-https"
	description="production-cloudfront-https"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		AutoUpdate="true"
		Name="production-cloudfront-https"
		Protocol="https"
	}
}


resource "aws_security_group_rule" "production-cloudfront-https_1" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-cloudfront-https.id}"
	cidr_blocks=["13.54.63.128/26","34.195.252.0/24","35.162.63.192/26","35.167.191.128/26","52.15.127.128/26","52.46.0.0/18","52.52.191.128/26","52.56.127.0/25","52.57.254.0/24","52.66.194.128/26","52.78.247.128/26","52.84.0.0/15","52.199.127.192/26","52.212.248.0/26","52.220.191.0/26","52.222.128.0/17","54.182.0.0/16","54.192.0.0/16","54.230.0.0/16","54.233.255.128/26","54.239.128.0/18","54.239.192.0/19","54.240.128.0/18","204.246.164.0/22","204.246.168.0/22","204.246.174.0/23","204.246.176.0/20","205.251.192.0/19","205.251.249.0/24","205.251.250.0/23","205.251.252.0/23","205.251.254.0/24","216.137.32.0/19","13.32.0.0/15","13.59.250.0/26"]
}


resource "aws_security_group_rule" "production-cloudfront-https_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-cloudfront-https.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-cloudfront-https-id" {
	value="${aws_security_group.production-cloudfront-https.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-nat" {
	name="production-nat"
	description="production-nat"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-nat"
	}
}


resource "aws_security_group_rule" "production-nat_1" {
	type="ingress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-nat.id}"
	cidr_blocks=["10.0.0.0/16"]
}

resource "aws_security_group_rule" "production-nat_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-nat.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-nat_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-nat.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-nat-id" {
	value="${aws_security_group.production-nat.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-elastalert-slave" {
	name="production-elastalert-slave"
	description="production-elastalert-slave"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-elastalert-slave_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-elastalert-slave.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-elastalert-slave_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-elastalert-slave.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-elastalert-slave_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-elastalert-slave.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-elastalert-slave-id" {
	value="${aws_security_group.production-elastalert-slave.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "cerberus-temp" {
	name="cerberus-temp"
	description="cerberus-temp"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "cerberus-temp_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-temp.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "cerberus-temp_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-temp.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "cerberus-temp_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.cerberus-temp.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "cerberus-temp-id" {
	value="${aws_security_group.cerberus-temp.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-intacct" {
	name="production-intacct"
	description="production-intacct"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "production-intacct_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-intacct.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-intacct_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-intacct.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-intacct_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-intacct.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-intacct-id" {
	value="${aws_security_group.production-intacct.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-rb-app" {
	name="production-rb-app"
	description="production-rb-app"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-rb-app"
	}
}


resource "aws_security_group_rule" "production-rb-app_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app.id}"
	source_security_group_id="${aws_security_group.production-rb-bastion.id}"
}

resource "aws_security_group_rule" "production-rb-app_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app.id}"
	source_security_group_id="${aws_security_group.production-rb-app-elb.id}"
}

resource "aws_security_group_rule" "production-rb-app_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app.id}"
	source_security_group_id="${aws_security_group.production-rb-bastion.id}"
}

resource "aws_security_group_rule" "production-rb-app_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-rb-app_5" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-rb-app_6" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-app.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-rb-app_7" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-rb-app.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-rb-app-id" {
	value="${aws_security_group.production-rb-app.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-redis-cache" {
	name="production-redis-cache"
	description="production-redis-cache"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-redis-cache"
	}
}


resource "aws_security_group_rule" "production-redis-cache_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-cache.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-cache_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-cache.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-cache_3" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-cache.id}"
	source_security_group_id="${aws_security_group.production-twemproxy.id}"
}

resource "aws_security_group_rule" "production-redis-cache_4" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-cache.id}"
	source_security_group_id="${aws_security_group.production-redis-cache.id}"
}


resource "aws_security_group_rule" "production-redis-cache_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-redis-cache.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-redis-cache-id" {
	value="${aws_security_group.production-redis-cache.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc7385_cl37237" {
	name="sc-qbol_acc7385_cl37237"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Qubole="qbol_acc7385_cl37237"
		Type="qubole"
		alias="qbol_acc7385_cl37237"
		Name="qbol_acc7385_cl37237"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl37237_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl37237_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl37237_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl37237_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl37237_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc7385_cl37237-id" {
	value="${aws_security_group.sc-qbol_acc7385_cl37237.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl39344" {
	name="sc-qbol_acc4126_cl39344"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Type="qubole"
		Name="qbol_acc4126_cl39344"
		Qubole="qbol_acc4126_cl39344"
		alias="qbol_acc4126_cl39344"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl39344_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39344_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39344_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39344_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl39344_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl39344-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl39344.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc7385_cl40149" {
	name="sc-qbol_acc7385_cl40149"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		alias="qbol_acc7385_cl40149"
		Qubole="qbol_acc7385_cl40149"
		Type="qubole"
		Name="qbol_acc7385_cl40149"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl40149_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40149_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40149_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40149_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl40149_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc7385_cl40149-id" {
	value="${aws_security_group.sc-qbol_acc7385_cl40149.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-mmsagent" {
	name="production-mmsagent"
	description="production-mmsagent"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-mmsagent"
	}
}


resource "aws_security_group_rule" "production-mmsagent_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mmsagent.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-mmsagent_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mmsagent.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-mmsagent_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-mmsagent.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-mmsagent-id" {
	value="${aws_security_group.production-mmsagent.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-rb-bastion" {
	name="production-rb-bastion"
	description="production-rb-bastion"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-rb-bastion"
	}
}


resource "aws_security_group_rule" "production-rb-bastion_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-rb-bastion.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-rb-bastion_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-rb-bastion.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-rb-bastion-id" {
	value="${aws_security_group.production-rb-bastion.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-spark" {
	name="production-spark"
	description="production-spark"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-spark"
	}
}


resource "aws_security_group_rule" "production-spark_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-spark.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-spark_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-spark.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-spark_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-spark.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-spark-id" {
	value="${aws_security_group.production-spark.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-app" {
	name="production-app"
	description="production-app"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-app"
	}
}


resource "aws_security_group_rule" "production-app_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-app_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-app_3" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-app_4" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "production-app_5" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-app_6" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "production-app_7" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-app_8" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.production-cloudfront-app-elb.id}"
}

resource "aws_security_group_rule" "production-app_9" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.production-app.id}"
	source_security_group_id="${aws_security_group.launch-wizard-1.id}"
}


resource "aws_security_group_rule" "production-app_10" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-app.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-app-id" {
	value="${aws_security_group.production-app.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-redis-userdata" {
	name="production-redis-userdata"
	description="production-redis-userdata"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-redis-userdata"
	}
}


resource "aws_security_group_rule" "production-redis-userdata_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-userdata.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-userdata_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-userdata.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-userdata_3" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-userdata.id}"
	source_security_group_id="${aws_security_group.production-twemproxy.id}"
}

resource "aws_security_group_rule" "production-redis-userdata_4" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-userdata.id}"
	source_security_group_id="${aws_security_group.production-redis-userdata.id}"
}


resource "aws_security_group_rule" "production-redis-userdata_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-redis-userdata.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-redis-userdata-id" {
	value="${aws_security_group.production-redis-userdata.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-testing-mocha" {
	name="production-testing-mocha"
	description="production-testing-mocha"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-testing-mocha"
	}
}


resource "aws_security_group_rule" "production-testing-mocha_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-mocha.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-testing-mocha_2" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-mocha.id}"
	source_security_group_id="${aws_security_group.production-testing-mocha.id}"
}

resource "aws_security_group_rule" "production-testing-mocha_3" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-testing-mocha.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "production-testing-mocha_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-testing-mocha.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-testing-mocha-id" {
	value="${aws_security_group.production-testing-mocha.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-ato" {
	name="production-ato"
	description="production-ato"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}



resource "aws_security_group_rule" "production-ato_1" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-ato.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-ato-id" {
	value="${aws_security_group.production-ato.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "metis-collector" {
	name="metis-collector"
	description="metis-collector"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
	}
}


resource "aws_security_group_rule" "metis-collector_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.metis-collector.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "metis-collector_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.metis-collector.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "metis-collector_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.metis-collector.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "metis-collector-id" {
	value="${aws_security_group.metis-collector.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "produciton-ut-app-vpc" {
	name="produciton-ut-app-vpc"
	description="vpc admin app"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-ut-app-vpc"
	}
}


resource "aws_security_group_rule" "produciton-ut-app-vpc_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_5" {
	type="ingress"
	from_port=27017
	to_port=27019
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_6" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-mmsagent.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_7" {
	type="ingress"
	from_port=5601
	to_port=5601
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_8" {
	type="ingress"
	from_port=25601
	to_port=25601
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	cidr_blocks=["66.201.45.202/32","67.207.99.42/32"]
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_9" {
	type="ingress"
	from_port=9292
	to_port=9292
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_10" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_11" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-app-elb.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_12" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_13" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-kibana-consumer.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_14" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-yaga-batch.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_15" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-yaga-app.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_16" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.production-yaga-worker.id}"
}

resource "aws_security_group_rule" "produciton-ut-app-vpc_17" {
	type="ingress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}


resource "aws_security_group_rule" "produciton-ut-app-vpc_18" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.produciton-ut-app-vpc.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "produciton-ut-app-vpc-id" {
	value="${aws_security_group.produciton-ut-app-vpc.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "stormlight" {
	name="stormlight"
	description="stormlight"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="stormlight"
	}
}


resource "aws_security_group_rule" "stormlight_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.stormlight.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "stormlight_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.stormlight.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "stormlight_3" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.stormlight.id}"
	source_security_group_id="${aws_security_group.production-twemproxy.id}"
}

resource "aws_security_group_rule" "stormlight_4" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.stormlight.id}"
	source_security_group_id="${aws_security_group.stormlight.id}"
}


resource "aws_security_group_rule" "stormlight_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.stormlight.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "stormlight-id" {
	value="${aws_security_group.stormlight.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-redshift" {
	name="production-redshift"
	description="production-redshift"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-redshift"
	}
}


resource "aws_security_group_rule" "production-redshift_1" {
	type="ingress"
	from_port=5439
	to_port=5439
	protocol="tcp"
	security_group_id="${aws_security_group.production-redshift.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}


resource "aws_security_group_rule" "production-redshift_2" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-redshift.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-redshift-id" {
	value="${aws_security_group.production-redshift.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-mocha-elb" {
	name="production-mocha-elb"
	description="production-mocha-elb"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-mocha-elb"
	}
}


resource "aws_security_group_rule" "production-mocha-elb_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}

resource "aws_security_group_rule" "production-mocha-elb_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-elb.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-mocha-elb_3" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}


resource "aws_security_group_rule" "production-mocha-elb_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-mocha-elb.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-mocha-elb-id" {
	value="${aws_security_group.production-mocha-elb.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-ipsec" {
	name="production-ipsec"
	description="production-ipsec"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-ipsec"
	}
}


resource "aws_security_group_rule" "production-ipsec_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["10.0.0.0/8"]
}

resource "aws_security_group_rule" "production-ipsec_2" {
	type="ingress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["172.16.0.0/16"]
}

resource "aws_security_group_rule" "production-ipsec_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-ipsec_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-ipsec.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-ipsec_5" {
	type="ingress"
	from_port=0
	to_port=0
	protocol="51"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["34.223.242.38/32","35.160.31.15/32"]
}

resource "aws_security_group_rule" "production-ipsec_6" {
	type="ingress"
	from_port=0
	to_port=0
	protocol="50"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["34.223.242.38/32","35.160.31.15/32"]
}

resource "aws_security_group_rule" "production-ipsec_7" {
	type="ingress"
	from_port=4500
	to_port=4500
	protocol="udp"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["35.160.31.15/32","34.223.242.38/32"]
}

resource "aws_security_group_rule" "production-ipsec_8" {
	type="ingress"
	from_port=500
	to_port=500
	protocol="udp"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["35.160.31.15/32","34.223.242.38/32"]
}


resource "aws_security_group_rule" "production-ipsec_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-ipsec.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-ipsec-id" {
	value="${aws_security_group.production-ipsec.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-yaga-worker" {
	name="production-yaga-worker"
	description="production-yaga-worker"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-yaga-worker"
	}
}


resource "aws_security_group_rule" "production-yaga-worker_1" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-worker.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-yaga-worker_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-worker.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-yaga-worker_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-yaga-worker.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}


resource "aws_security_group_rule" "production-yaga-worker_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-yaga-worker.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-yaga-worker-id" {
	value="${aws_security_group.production-yaga-worker.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc4126_cl39298" {
	name="sc-qbol_acc4126_cl39298"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		alias="qbol_acc4126_cl39298"
		Qubole="qbol_acc4126_cl39298"
		Name="qbol_acc4126_cl39298"
		Type="qubole"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl39298_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39298_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39298_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc4126_cl39298_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc4126_cl39298_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc4126_cl39298-id" {
	value="${aws_security_group.sc-qbol_acc4126_cl39298.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-search-mazagran" {
	name="production-search-mazagran"
	description="production-search-mazagran"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-search-mazagran"
	}
}


resource "aws_security_group_rule" "production-search-mazagran_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-app.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-search-mazagran.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${aws_security_group.production-mocha-haproxy.id}"
}


resource "aws_security_group_rule" "production-search-mazagran_9" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-search-mazagran-id" {
	value="${aws_security_group.production-search-mazagran.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-mocha-haproxy" {
	name="production-mocha-haproxy"
	description="production-mocha-haproxy"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-mocha-haproxy"
	}
}


resource "aws_security_group_rule" "production-mocha-haproxy_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-mocha-elb.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_5" {
	type="ingress"
	from_port=5601
	to_port=5602
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_6" {
	type="ingress"
	from_port=3000
	to_port=3000
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_7" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-mocha-elb.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_8" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-mocha-elb.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_9" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_10" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-kibana-consumer.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_11" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-yaga-app.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_12" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-yaga-batch.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_13" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-yaga-worker.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_14" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-testing-mocha.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_15" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_16" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_17" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.production-ipsec.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_18" {
	type="ingress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${aws_security_group.Production-poshcrew-ALB.id}"
}


resource "aws_security_group_rule" "production-mocha-haproxy_19" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-mocha-haproxy-id" {
	value="${aws_security_group.production-mocha-haproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "prod-coeus-oauthproxy" {
	name="prod-coeus-oauthproxy"
	description="prod-coeus-oauthproxy created 2017-11-04T11:33:27.257+05:30"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
	}
}


resource "aws_security_group_rule" "prod-coeus-oauthproxy_1" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.prod-coeus-oauthproxy.id}"
	source_security_group_id="${aws_security_group.coeus-alb-sg.id}"
}

resource "aws_security_group_rule" "prod-coeus-oauthproxy_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.prod-coeus-oauthproxy.id}"
	source_security_group_id="${aws_security_group.spark-access.id}"
}

resource "aws_security_group_rule" "prod-coeus-oauthproxy_3" {
	type="ingress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.prod-coeus-oauthproxy.id}"
	source_security_group_id="${aws_security_group.coeus-alb-sg.id}"
}


resource "aws_security_group_rule" "prod-coeus-oauthproxy_4" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.prod-coeus-oauthproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "prod-coeus-oauthproxy-id" {
	value="${aws_security_group.prod-coeus-oauthproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "sc-qbol_acc7385_cl40071" {
	name="sc-qbol_acc7385_cl40071"
	description="0.9999-Qubole_Temporary_Security_Group"
	vpc_id="${module.vpc.sparkemr-id}"

	tags {
		Qubole="qbol_acc7385_cl40071"
		alias="qbol_acc7385_cl40071"
		Type="qubole"
		Name="qbol_acc7385_cl40071"
	}
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl40071_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
	cidr_blocks=["0.0.0.0/0","54.204.43.32/32","54.243.39.255/32","23.23.178.159/32","54.243.29.190/32","54.243.128.178/32","23.21.153.231/32","23.21.191.84/32","34.205.91.155/32","34.205.91.156/30","34.205.91.160/28","34.205.91.176/29","34.205.91.184/31","34.205.91.186/32"]
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40071_2" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="udp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40071_3" {
	type="ingress"
	from_port=1
	to_port=65535
	protocol="tcp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
}

resource "aws_security_group_rule" "sc-qbol_acc7385_cl40071_4" {
	type="ingress"
	from_port=-1
	to_port=-1
	protocol="icmp"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
	source_security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
}


resource "aws_security_group_rule" "sc-qbol_acc7385_cl40071_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "sc-qbol_acc7385_cl40071-id" {
	value="${aws_security_group.sc-qbol_acc7385_cl40071.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "cerberus" {
	name="cerberus"
	description="cerberus"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="cerberus"
	}
}


resource "aws_security_group_rule" "cerberus_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "cerberus_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "cerberus_3" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus.id}"
	source_security_group_id="${aws_security_group.cerberus.id}"
}

resource "aws_security_group_rule" "cerberus_4" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus.id}"
	source_security_group_id="${aws_security_group.cerberus-twemproxy.id}"
}

resource "aws_security_group_rule" "cerberus_5" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus.id}"
	source_security_group_id="${aws_security_group.cerberus-temp.id}"
}


resource "aws_security_group_rule" "cerberus_6" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.cerberus.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "cerberus-id" {
	value="${aws_security_group.cerberus.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################


###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "cerberus-twemproxy" {
	name="cerberus-twemproxy"
	description="cerberus-twemproxy"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="cerberus-twemproxy"
	}
}


resource "aws_security_group_rule" "cerberus-twemproxy_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "cerberus-twemproxy_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "cerberus-twemproxy_3" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "cerberus-twemproxy_4" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${aws_security_group.production-redis-haproxy.id}"
}


resource "aws_security_group_rule" "cerberus-twemproxy_5" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "cerberus-twemproxy-id" {
	value="${aws_security_group.cerberus-twemproxy.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "production-db-reporting" {
	name="production-db-reporting"
	description="production-db-reporting"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="production-db-reporting"
	}
}


resource "aws_security_group_rule" "production-db-reporting_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "production-db-reporting_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.production-control.id}"
}

resource "aws_security_group_rule" "production-db-reporting_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-db-reporting_4" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.production-gateway.id}"
}

resource "aws_security_group_rule" "production-db-reporting_5" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.production-rb-app.id}"
}

resource "aws_security_group_rule" "production-db-reporting_6" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-db-reporting_7" {
	type="ingress"
	from_port=27017
	to_port=27017
	protocol="tcp"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	source_security_group_id="${aws_security_group.skynet-slave.id}"
}


resource "aws_security_group_rule" "production-db-reporting_8" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.production-db-reporting.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "production-db-reporting-id" {
	value="${aws_security_group.production-db-reporting.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################

resource "aws_security_group" "skynet-slave" {
	name="skynet-slave"
	description="skynet-slave"
	vpc_id="${module.vpc.poshmark-id}"

	tags {
		Name="skynet-slave"
	}
}


resource "aws_security_group_rule" "skynet-slave_1" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-slave.id}"
	source_security_group_id="${aws_security_group.production-access.id}"
}

resource "aws_security_group_rule" "skynet-slave_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.skynet-slave.id}"
	source_security_group_id="${aws_security_group.skynet-master.id}"
}


resource "aws_security_group_rule" "skynet-slave_3" {
	type="egress"
	from_port=0
	to_port=0
	protocol="-1"
	security_group_id="${aws_security_group.skynet-slave.id}"
	cidr_blocks=["0.0.0.0/0"]
}
output "skynet-slave-id" {
	value="${aws_security_group.skynet-slave.id}"
}

###################################################################################################
###################################################################################################
###################################################################################################
