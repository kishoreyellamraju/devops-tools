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
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-latte_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-latte_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-latte_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-latte_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-latte_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-search-latte.id}"
}

resource "aws_security_group_rule" "production-search-latte_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-latte_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-latte.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-breve_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-breve_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-breve_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-breve_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-breve_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-search-breve.id}"
}

resource "aws_security_group_rule" "production-search-breve_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-breve_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-breve.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${module.vpc.production-search-ironbank.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-ironbank_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-ironbank.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mocha_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mocha_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mocha_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-search-mocha.id}"
}

resource "aws_security_group_rule" "production-search-mocha_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-mocha_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-anthracite.id}"
}

resource "aws_security_group_rule" "production-search-mocha_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-testing-mocha.id}"
}

resource "aws_security_group_rule" "production-search-mocha_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mocha_9" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mocha.id}"
	source_security_group_id="${module.vpc.production-ato.id}"
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
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-romano_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-romano_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-romano_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-romano_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-romano_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${module.vpc.production-search-romano.id}"
}

resource "aws_security_group_rule" "production-search-romano_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-romano.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
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
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-doppio_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-doppio_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-doppio_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-doppio_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-doppio_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-search-doppio.id}"
}

resource "aws_security_group_rule" "production-search-doppio_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-doppio_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-doppio.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-search-kaapi.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-kaapi_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-kaapi.id}"
	source_security_group_id="${module.vpc.production-app.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-americano_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-americano_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${module.vpc.production-search-americano.id}"
}

resource "aws_security_group_rule" "production-search-americano_4" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-americano_5" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-americano_6" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-americano_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-americano.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-espresso_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-espresso_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-espresso_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-espresso_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-search-espresso.id}"
}

resource "aws_security_group_rule" "production-search-espresso_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-espresso_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-espresso_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-espresso.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
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
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_3" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_4" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-search-haproxy.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_5" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-app.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_6" {
	type="ingress"
	from_port=9200
	to_port=9399
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-search-mazagran.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_7" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-search-mazagran_8" {
	type="ingress"
	from_port=9200
	to_port=9200
	protocol="tcp"
	security_group_id="${aws_security_group.production-search-mazagran.id}"
	source_security_group_id="${module.vpc.production-mocha-haproxy.id}"
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
