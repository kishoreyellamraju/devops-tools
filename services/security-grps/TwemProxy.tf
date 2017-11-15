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
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_2" {
	type="ingress"
	from_port=22321
	to_port=22321
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_3" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-twemproxy_4" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-twemproxy_5" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_6" {
	type="ingress"
	from_port=22621
	to_port=22621
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_7" {
	type="ingress"
	from_port=22521
	to_port=22521
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "production-twemproxy_8" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.production-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "cerberus-twemproxy_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "cerberus-twemproxy_3" {
	type="ingress"
	from_port=22121
	to_port=22121
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
}

resource "aws_security_group_rule" "cerberus-twemproxy_4" {
	type="ingress"
	from_port=22221
	to_port=22221
	protocol="tcp"
	security_group_id="${aws_security_group.cerberus-twemproxy.id}"
	source_security_group_id="${module.vpc.production-redis-haproxy.id}"
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
