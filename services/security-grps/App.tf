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
