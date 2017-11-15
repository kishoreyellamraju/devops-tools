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
