resource "aws_security_group" "production-qw" {
	name="production-qw"
	description="production-qw"
	vpc_id="${module.vpc.Poshmark-id}"

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
	source_security_group_id="${module.vpc.production-access.id}"
}

resource "aws_security_group_rule" "production-qw_2" {
	type="ingress"
	from_port=22
	to_port=22
	protocol="tcp"
	security_group_id="${aws_security_group.production-qw.id}"
	source_security_group_id="${module.vpc.production-jenkins.id}"
}

resource "aws_security_group_rule" "production-qw_3" {
	type="ingress"
	from_port=4949
	to_port=4949
	protocol="tcp"
	security_group_id="${aws_security_group.production-qw.id}"
	source_security_group_id="${module.vpc.production-mmsagent.id}"
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
