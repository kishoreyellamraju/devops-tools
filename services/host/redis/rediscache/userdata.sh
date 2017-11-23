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
if [[ $TAG_NAME_VALUE =~ prod-redis-cache-[a-c]01-2[b-c] ]]; then
   sudo puppet apply --certname=prod-redis-cache-master.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################slave a ##################################
if [[ $TAG_NAME_VALUE =~ prod-redis-cache-a02-2[b-c] ]]; then
   sudo puppet apply --certname=prod-redis-cache-a-slave.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################slave b ##################################
if [[ $TAG_NAME_VALUE =~ prod-redis-cache-b02-2[b-c] ]]; then
   sudo puppet apply --certname=prod-redis-cache-b-slave.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################slave c ##################################
if [[ $TAG_NAME_VALUE =~ prod-redis-cache-c02-2[b-c] ]]; then
   sudo puppet apply --certname=prod-redis-cache-c-slave.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
