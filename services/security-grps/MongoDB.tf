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
