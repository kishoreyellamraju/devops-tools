#!/bin/sh
#------------------------------------------------------------------------------
#FILE: userdata
source ~/.bashrc

TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
LOGFILE="/var/log/bootstrap.log"
echo "$TIMESTAMP: Starting to execute UserData script" >> $LOGFILE
sudo puppet apply --certname=gandalf-c.poshmark.com --modulepath=/goshposh/sysops/aws/puppet/modules /goshposh/sysops/aws/puppet/manifests/nodes.pp
echo "$TIMESTAMP:  UserData script executed successfully" >> $LOGFILE
