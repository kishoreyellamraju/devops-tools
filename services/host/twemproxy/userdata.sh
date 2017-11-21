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
######################################master##################################
if [ "TAG_NAME_VALUE"=~"cerberus-twemproxy[0][5-6]$" ]; then
   sudo puppet apply --certname=cerberus-twemproxy.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################slave##################################
if [ "TAG_NAME_VALUE"=~"prod-twemproxy[0][1-2]$" ]; then
   sudo puppet apply --certname=prod-twemproxy.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
