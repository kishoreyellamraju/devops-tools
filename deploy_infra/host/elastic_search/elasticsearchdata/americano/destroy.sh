#!/bin/bash
#
##!/uisr/bin/sh     #  Declares a Bourne shell
##!/usr/bin/bash   #  Declares a Bourne-Again shell
##!/usr/bin/csh    #  Declares a C shell
##!/usr/bin/tsh    #  Declares a T shell
#
#
#####################################################################
if (( "$#" != 3 ))
then
    echo "Necessary to have 2 parameters."
    echo "Param 1:  Environment - Possible Values are"
    echo "Param 2:  Application Name Usage Info:…"
    echo "Param 3:  Bucket Name Usage Info:…"
exit 1
fi

ENV=$(echo "$1" | tr '[:upper:]' '[:lower:]')
APPNAME=$2
MODULE_TYPE=host
SUB_MODULE_TYPE=elastic_search
TYPE=elasticsearchdata
CLUSTER=americano
STATE_FILE="${ENV}/cfg.${APPNAME}/$MODULE_TYPE/$SUB_MODULE_TYPE/$TYPE/$CLUSTER/terraform.tfstate"
#BUCKET=poshmark-terraform-state
BUCKET=$3
echo `pwd`
cd ../../../../services/$MODULE_TYPE/$SUB_MODULE_TYPE/$TYPE/$CLUSTER/
echo `pwd`

#terraform init
terraform init -backend=true -force-copy \
-backend-config="region=us-west-2" \
-backend-config="bucket=${BUCKET}" \
-backend-config="key=${STATE_FILE}"

#cd ../../services/$MODULE_TYPE/$SUB_MODULE_TYPE/${ENV}
echo `pwd`
terraform destroy -var-file="../../${ENV}/terraform.tfvars" -force
