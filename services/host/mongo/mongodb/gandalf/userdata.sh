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
if [ "TAG_NAME_VALUE"=~"gandalf-a[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-a.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: B###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-b[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-b.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: C###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-c[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-c.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: D###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-d[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-d.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: E###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-e[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-e.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: F###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-f[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-f.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: G###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-g[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-g.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: H###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-h[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-h.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: I###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-i[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-i.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: J###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-j[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-j.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: K###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-k[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-k.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: L###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-l[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-l.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: M###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-m[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-m.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: N###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-n[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-n.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: O###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-o[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-o.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: P###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-p[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-p.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: Q###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-q[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-q.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
##############################Shard: R###########################################
if [ "TAG_NAME_VALUE"=~"gandalf-r[0-9]$" ]; then
   sudo puppet apply --certname=gandalf-r.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
fi
