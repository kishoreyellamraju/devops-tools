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
if [[ $TAG_NAME_VALUE =~ prod-redis-userdata-a01-2[b-c] ]]; then
   sudo puppet apply --certname=prod-redis-userdata-a-master.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################slave##################################
if [[ $TAG_NAME_VALUE =~ prod-redis-userdata-a02-2[b-c] ]]; then
   sudo puppet apply --certname=prod-redis-userdata-a-slave.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
