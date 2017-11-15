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
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_3" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-vault-haproxy_5" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-vault-haproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
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
	source_security_group_id="${module.vpc.production-search-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-search-haproxy_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-haproxy.id}"
	source_security_group_id="${module.vpc.production-search-haproxy-elb.id}"
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
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_2" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_3" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_4" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_5" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_6" {
	type="ingress"
	from_port=16379
	to_port=16379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_7" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_8" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_9" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_10" {
	type="ingress"
	from_port=22421
	to_port=22421
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_11" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_12" {
	type="ingress"
	from_port=8080
	to_port=8080
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_13" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_14" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_15" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_16" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_17" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_18" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_19" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_20" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_21" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_22" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_23" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_24" {
	type="ingress"
	from_port=6379
	to_port=6379
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_25" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_26" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_27" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_28" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_29" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_30" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_31" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_32" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_33" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_34" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_35" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_36" {
	type="ingress"
	from_port=22721
	to_port=22721
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_37" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_38" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_39" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_40" {
	type="ingress"
	from_port=22821
	to_port=22821
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_41" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_42" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_43" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_44" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_45" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_46" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-batch.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_47" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-qw.id}"
}

resource "aws_security_group_rule" "production-redis-haproxy_48" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-redis-haproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy-elb.id}"
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
	source_security_group_id="${module.vpc.production-mocha-elb.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_2" {
	type="ingress"
	from_port=80
	to_port=80
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_5" {
	type="ingress"
	from_port=5601
	to_port=5602
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_6" {
	type="ingress"
	from_port=3000
	to_port=3000
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_7" {
	type="ingress"
	from_port=6180
	to_port=6180
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-mocha-elb.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_8" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-mocha-elb.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_9" {
	type="ingress"
	from_port=443
	to_port=443
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.Production-poshcrew-ALB.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_10" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-kibana-consumer.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_11" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-yaga-app.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_12" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-yaga-batch.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_13" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-yaga-worker.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_14" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-testing-mocha.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_15" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_16" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-elastalert-slave.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_17" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.production-ipsec.id}"
}

resource "aws_security_group_rule" "production-mocha-haproxy_18" {
	type="ingress"
	from_port=8008
	to_port=8008
	protocol="tcp"
	security_group_id="${aws_security_group.production-mocha-haproxy.id}"
	source_security_group_id="${module.vpc.Production-poshcrew-ALB.id}"
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
