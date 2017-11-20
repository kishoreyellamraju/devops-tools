#!/bin/sh
#------------------------------------------------------------------------------
#FILE: userdata
source ~/.bashrc

TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
LOGFILE="/var/log/bootstrap.log"
echo "$TIMESTAMP: Starting to execute UserData script" >> $LOGFILE
sudo apt-get install python-pip -y
sudo pip install awscli
yum install wget -y
TAG_NAME="Name"
TAG_TYPE="Type"
INSTANCE_ID="`wget -qO- http://instance-data/latest/meta-data/instance-id`"
REGION="`wget -qO- http://instance-data/latest/meta-data/placement/availability-zone | sed -e 's:\([0-9][0-9]*\)[a-z]*\$:\\1:'`"
TAG_NAME_VALUE="`aws ec2 describe-tags --filters "Name=resource-id,Values=$INSTANCE_ID" "Name=key,Values=$TAG_NAME" --region $REGION --output=text | cut -f5`"
TAG_TYPE_VALUE ="`aws ec2 describe-tags --filters "Name=resource-id,Values=$INSTANCE_ID" "Name=key,Values=$TAG_TYPE" --region $REGION --output=text | cut -f5`"

######################################add puppet apply##################################
if [ "TAG_NAME_VALUE"=~"yaga-c[0-9][0-9]$" ]; then
   sudo puppet apply --certname=prod-yaga-c.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
#######################################################################################
if [ "TAG_NAME_VALUE"=~"mocha-c[0-9][0-9]-[b-c]$" ]; then
   sudo puppet apply --certname=prod-yaga-c.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
#################################all mongos boxes#####################################
if [[ "TAG_TYPE_VALUE"=="MongoS" ]]; then
  sudo puppet apply --certname=prod-mongos.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
####################################all queue servers:###############################
if [ "TAG_TYPE_VALUE"=="Queue" ]; then
  sudo puppet apply --certname=prod-queue.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
#############################quueworker#############################################
if [ "TAG_NAME_VALUE"=~"prod-nt-qw[0][1-9]-[b-c]$" ]; then
  sudo puppet apply --certname=nt-qw inherits baseapp { --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp }
fi
#########################prod-eb-qw[01-16]-(b|c)####################################
if [ "TAG_NAME_VALUE"=~"prod-eb-qw[0-1][0-9]-[b-c]$" ]; then
  sudo puppet apply --certname=eb-qw inherits baseapp { --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp }
fi
########################prod-pb-qw[01-12]-(b|c)####################################
if [ "TAG_NAME_VALUE"=~"prod-pb-qw[0-9][0-9]-[b-c]$" ]; then
  sudo puppet apply --certname=pb-qw inherits baseapp { --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp }
fi
########################prod-act-qw[01-22]-(b|c)####################################
if [ "TAG_NAME_VALUE"=~"prod-act-qw[0-9][0-9]-[b-c]$" ]; then
  sudo puppet apply --certname=act-qw inherits baseapp { --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp }
fi
######################prod-bg-qw[01-09]-(b|c)######################################
if [ "TAG_NAME_VALUE"=~"prod-bg-qw[0-9][0-9]-[b-c]$" ]; then
  sudo puppet apply --certname=act-qw inherits baseapp { --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp }
fi
