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
######################################Shard: A##################################
if [[ $TAG_NAME_VALUE =~ stibbons-a[0-9]-2[b-c]$ ]]; then
   sudo puppet apply --certname=stibbons-a.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################Shard: B##################################
if [[ $TAG_NAME_VALUE =~ stibbons-b[0-9]-2[b-c]$ ]]; then
   sudo puppet apply --certname=stibbons-b.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################Shard: C##################################
if [[ $TAG_NAME_VALUE =~ stibbons-c[0-9]-2[b-c]$ ]]; then
   sudo puppet apply --certname=stibbons-c.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################Shard: D##################################
if [[ $TAG_NAME_VALUE =~ stibbons-d[0-9]-2[b-c]$ ]]; then
   sudo puppet apply --certname=stibbons-d.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################Shard: E##################################
if [[ $TAG_NAME_VALUE =~ stibbons-e[0-9]$ ]]; then
   sudo puppet apply --certname=stibbons-e.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
######################################Shard: F##################################
if [[ $TAG_NAME_VALUE =~ stibbons-f[0-9]$ ]]; then
   sudo puppet apply --certname=stibbons-f.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
